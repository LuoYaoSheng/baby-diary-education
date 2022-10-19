import request from '@/utils/request'
// 查询宝宝身体列表
export function listSysBabyBody(query) {
  return request({
    url: '/system/sysBabyBody/list',
    method: 'get',
    params: query
  })
}
// 查询宝宝身体详细
export function getSysBabyBody(id) {
  return request({
    url: '/system/sysBabyBody/get',
    method: 'get',
    params: {
     id: id.toString()
    }
  })
}
// 新增宝宝身体
export function addSysBabyBody(data) {
  return request({
    url: '/system/sysBabyBody/add',
    method: 'post',
    data: data
  })
}
// 修改宝宝身体
export function updateSysBabyBody(data) {
  return request({
    url: '/system/sysBabyBody/edit',
    method: 'put',
    data: data
  })
}
// 删除宝宝身体
export function delSysBabyBody(ids) {
  return request({
    url: '/system/sysBabyBody/delete',
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
