import request from '@/utils/request'
// 查询宝宝辅食列表
export function listSysBabyFoodComplementary(query) {
  return request({
    url: '/system/sysBabyFoodComplementary/list',
    method: 'get',
    params: query
  })
}
// 查询宝宝辅食详细
export function getSysBabyFoodComplementary(id) {
  return request({
    url: '/system/sysBabyFoodComplementary/get',
    method: 'get',
    params: {
     id: id.toString()
    }
  })
}
// 新增宝宝辅食
export function addSysBabyFoodComplementary(data) {
  return request({
    url: '/system/sysBabyFoodComplementary/add',
    method: 'post',
    data: data
  })
}
// 修改宝宝辅食
export function updateSysBabyFoodComplementary(data) {
  return request({
    url: '/system/sysBabyFoodComplementary/edit',
    method: 'put',
    data: data
  })
}
// 删除宝宝辅食
export function delSysBabyFoodComplementary(ids) {
  return request({
    url: '/system/sysBabyFoodComplementary/delete',
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
