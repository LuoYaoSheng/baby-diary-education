// 查询列表
export function getItems(f, query) {
  query = query || { pageSize: 10000 }
  return f(query)
}

export function setItems(response, k, v) {
  const data = []
  k = k || 'id'
  v = v || 'name'
  if (response.data && response.data.list && response.data.list.length > 0) {
    response.data.list.forEach(e => {
      data.push({
        key: e[k].toString(),
        value: e[v].toString()
      })
    })
    return data
  }
}

/** 通过 options 数组获取 key 对应的 value */
export function getOptionValue(key, options) {
  const option = options.find(value => {
    return key + "" === value.key
  })
  if (option !== undefined) {
    return option.value;
  }
}

export function isEmpty(v) {
  if (v === '' || v === undefined || v === null) {
    return true
  }

  if (typeof v === 'object') {
    if (Array.isArray(v)) {
      return v.length === 0
    } else {
      return Object.keys(v).length === 0
    }
  }
  return false
}
