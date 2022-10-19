import request from '@/utils/request'
// 查询宝宝母乳亲喂列表
export function listSysBabyFoodFeedingMother(query) {
  return request({
    url: '/system/sysBabyFoodFeedingMother/list',
    method: 'get',
    params: query
  })
}
// 查询宝宝母乳亲喂详细
export function getSysBabyFoodFeedingMother(id) {
  return request({
    url: '/system/sysBabyFoodFeedingMother/get',
    method: 'get',
    params: {
     id: id.toString()
    }
  })
}
// 新增宝宝母乳亲喂
export function addSysBabyFoodFeedingMother(data) {
  return request({
    url: '/system/sysBabyFoodFeedingMother/add',
    method: 'post',
    data: data
  })
}
// 修改宝宝母乳亲喂
export function updateSysBabyFoodFeedingMother(data) {
  return request({
    url: '/system/sysBabyFoodFeedingMother/edit',
    method: 'put',
    data: data
  })
}
// 删除宝宝母乳亲喂
export function delSysBabyFoodFeedingMother(ids) {
  return request({
    url: '/system/sysBabyFoodFeedingMother/delete',
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
