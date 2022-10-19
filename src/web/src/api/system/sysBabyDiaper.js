import request from '@/utils/request'
// 查询宝宝换尿布列表
export function listSysBabyDiaper(query) {
  return request({
    url: '/system/sysBabyDiaper/list',
    method: 'get',
    params: query
  })
}
// 查询宝宝换尿布详细
export function getSysBabyDiaper(id) {
  return request({
    url: '/system/sysBabyDiaper/get',
    method: 'get',
    params: {
     id: id.toString()
    }
  })
}
// 新增宝宝换尿布
export function addSysBabyDiaper(data) {
  return request({
    url: '/system/sysBabyDiaper/add',
    method: 'post',
    data: data
  })
}
// 修改宝宝换尿布
export function updateSysBabyDiaper(data) {
  return request({
    url: '/system/sysBabyDiaper/edit',
    method: 'put',
    data: data
  })
}
// 删除宝宝换尿布
export function delSysBabyDiaper(ids) {
  return request({
    url: '/system/sysBabyDiaper/delete',
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
