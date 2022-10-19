package tools

import (
	"context"
	"github.com/gogf/gf/errors/gerror"
	"github.com/gogf/gf/os/gtime"
	"github.com/gogf/gf/text/gregex"
	"github.com/gogf/gf/util/gconv"
	"github.com/gogf/gf/util/gvalid"
	"reflect"
	"strconv"
	"strings"
)

func init() {
	if err := gvalid.RegisterRule("integer-array", IntegerArray); err != nil {
		panic(err)
	}
	if err := gvalid.RegisterRule("float-array", FloatArray); err != nil {
		panic(err)
	}
	if err := gvalid.RegisterRule("date-array", DateArray); err != nil {
		panic(err)
	}
	if err := gvalid.RegisterRule("datetime-array", DatetimeArray); err != nil {
		panic(err)
	}
}

func IntegerArray(ctx context.Context, rule string, value interface{}, message string, data interface{}) error {
	if value == nil {
		return nil
	}
	typeOfValue := reflect.TypeOf(value)
	if typeOfValue.Kind() != reflect.Array && typeOfValue.Kind() != reflect.Slice {
		return gerror.New(message)
	}
	for _, v := range value.([]interface{}) {
		valueStr := strings.TrimSpace(gconv.String(v))
		if valueStr == "" {
			continue
		}
		if _, err := strconv.Atoi(valueStr); err != nil {
			continue
		}
		return gerror.New(message)
	}
	return nil
}

func FloatArray(ctx context.Context, rule string, value interface{}, message string, data interface{}) error {
	if value == nil {
		return nil
	}
	typeOfValue := reflect.TypeOf(value)
	if typeOfValue.Kind() != reflect.Array && typeOfValue.Kind() != reflect.Slice {
		return gerror.New(message)
	}
	for _, v := range value.([]interface{}) {
		valueStr := strings.TrimSpace(gconv.String(v))
		if valueStr == "" {
			continue
		}
		if _, err := strconv.ParseFloat(valueStr, 10); err == nil {
			continue
		}
		return gerror.New(message)
	}
	return nil
}

func DateArray(ctx context.Context, rule string, value interface{}, message string, data interface{}) error {
	if value == nil {
		return nil
	}
	typeOfValue := reflect.TypeOf(value)
	if typeOfValue.Kind() != reflect.Array && typeOfValue.Kind() != reflect.Slice {
		return gerror.New(message)
	}
	for _, v := range value.([]interface{}) {
		// support for time value, eg: gtime.Time/*gtime.Time, time.Time/*time.Time.
		if _, ok := v.(gtime.Time); ok {
			continue
		}
		valueStr := strings.TrimSpace(gconv.String(v))
		if valueStr == "" {
			continue
		}
		if gregex.IsMatchString(`\d{4}[\.\-\_/]{0,1}\d{2}[\.\-\_/]{0,1}\d{2}`, valueStr) {
			continue
		}
		return gerror.New(message)
	}
	return nil
}

func DatetimeArray(ctx context.Context, rule string, value interface{}, message string, data interface{}) error {
	if value == nil {
		return nil
	}
	typeOfValue := reflect.TypeOf(value)
	if typeOfValue.Kind() != reflect.Array && typeOfValue.Kind() != reflect.Slice {
		return gerror.New(message)
	}
	for _, v := range value.([]interface{}) {
		// support for time value, eg: gtime.Time/*gtime.Time, time.Time/*time.Time.
		if _, ok := v.(gtime.Time); ok {
			continue
		}
		valueStr := strings.TrimSpace(gconv.String(v))
		if valueStr == "" {
			continue
		}
		if _, err := gtime.StrToTimeFormat(valueStr, "Y-m-d H:i:s"); err == nil {
			continue
		}
		return gerror.New(message)
	}
	return nil
}
