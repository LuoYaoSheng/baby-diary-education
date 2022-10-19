import request from '@/utils/request'
// 查询宝宝基础信息列表
export function listSysBaby(query) {
  return request({
    url: '/system/sysBaby/list',
    method: 'get',
    params: query
  })
}
// 查询宝宝基础信息详细
export function getSysBaby(id) {
  return request({
    url: '/system/sysBaby/get',
    method: 'get',
    params: {
     id: id.toString()
    }
  })
}
// 新增宝宝基础信息
export function addSysBaby(data) {
  return request({
    url: '/system/sysBaby/add',
    method: 'post',
    data: data
  })
}
// 修改宝宝基础信息
export function updateSysBaby(data) {
  return request({
    url: '/system/sysBaby/edit',
    method: 'put',
    data: data
  })
}
// 删除宝宝基础信息
export function delSysBaby(ids) {
  return request({
    url: '/system/sysBaby/delete',
    method: 'delete',
    data:{
       ids:ids
    }
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
