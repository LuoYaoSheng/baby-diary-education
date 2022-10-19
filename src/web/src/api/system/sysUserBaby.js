import request from '@/utils/request'
// 查询用户与宝宝关联列表
export function listSysUserBaby(query) {
  return request({
    url: '/system/sysUserBaby/list',
    method: 'get',
    params: query
  })
}
// 查询用户与宝宝关联详细
export function getSysUserBaby(id) {
  return request({
    url: '/system/sysUserBaby/get',
    method: 'get',
    params: {
     id: id.toString()
    }
  })
}
// 新增用户与宝宝关联
export function addSysUserBaby(data) {
  return request({
    url: '/system/sysUserBaby/add',
    method: 'post',
    data: data
  })
}
// 修改用户与宝宝关联
export function updateSysUserBaby(data) {
  return request({
    url: '/system/sysUserBaby/edit',
    method: 'put',
    data: data
  })
}
// 删除用户与宝宝关联
export function delSysUserBaby(ids) {
  return request({
    url: '/system/sysUserBaby/delete',
    method: 'delete',
    data:{
       ids:ids
    }
  })
}
