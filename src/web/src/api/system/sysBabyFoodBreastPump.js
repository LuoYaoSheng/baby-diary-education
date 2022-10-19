import request from '@/utils/request'
// 查询宝宝吸奶器列表
export function listSysBabyFoodBreastPump(query) {
  return request({
    url: '/system/sysBabyFoodBreastPump/list',
    method: 'get',
    params: query
  })
}
// 查询宝宝吸奶器详细
export function getSysBabyFoodBreastPump(id) {
  return request({
    url: '/system/sysBabyFoodBreastPump/get',
    method: 'get',
    params: {
     id: id.toString()
    }
  })
}
// 新增宝宝吸奶器
export function addSysBabyFoodBreastPump(data) {
  return request({
    url: '/system/sysBabyFoodBreastPump/add',
    method: 'post',
    data: data
  })
}
// 修改宝宝吸奶器
export function updateSysBabyFoodBreastPump(data) {
  return request({
    url: '/system/sysBabyFoodBreastPump/edit',
    method: 'put',
    data: data
  })
}
// 删除宝宝吸奶器
export function delSysBabyFoodBreastPump(ids) {
  return request({
    url: '/system/sysBabyFoodBreastPump/delete',
    method: 'delete',
    data:{
       ids:ids
    }
  })
}
// 关联sys_baby表选项
export function listSysBaby(query){
   return request({
     url: '/system/sysBaby/list',
     method: 'get',
     params: query
   })
}
//获取用户信息列表
export function getUserList(uIds){
    return request({
     url: '/system/auth/usersGet',
     method: 'get',
     params: {ids:uIds}
   })
}
