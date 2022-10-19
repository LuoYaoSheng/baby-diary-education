import request from '@/utils/request'
// 查询三方绑定列表
export function listSysUserBind(query) {
  return request({
    url: '/system/sysUserBind/list',
    method: 'get',
    params: query
  })
}
// 查询三方绑定详细
export function getSysUserBind(id) {
  return request({
    url: '/system/sysUserBind/get',
    method: 'get',
    params: {
     id: id.toString()
    }
  })
}
// 新增三方绑定
export function addSysUserBind(data) {
  return request({
    url: '/system/sysUserBind/add',
    method: 'post',
    data: data
  })
}
// 修改三方绑定
export function updateSysUserBind(data) {
  return request({
    url: '/system/sysUserBind/edit',
    method: 'put',
    data: data
  })
}
// 删除三方绑定
export function delSysUserBind(ids) {
  return request({
    url: '/system/sysUserBind/delete',
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
