import request from '@/utils/request'
// 查询宝宝奶瓶喂养列表
export function listSysBabyFoodFeedingBottle(query) {
  return request({
    url: '/system/sysBabyFoodFeedingBottle/list',
    method: 'get',
    params: query
  })
}
// 查询宝宝奶瓶喂养详细
export function getSysBabyFoodFeedingBottle(id) {
  return request({
    url: '/system/sysBabyFoodFeedingBottle/get',
    method: 'get',
    params: {
     id: id.toString()
    }
  })
}
// 新增宝宝奶瓶喂养
export function addSysBabyFoodFeedingBottle(data) {
  return request({
    url: '/system/sysBabyFoodFeedingBottle/add',
    method: 'post',
    data: data
  })
}
// 修改宝宝奶瓶喂养
export function updateSysBabyFoodFeedingBottle(data) {
  return request({
    url: '/system/sysBabyFoodFeedingBottle/edit',
    method: 'put',
    data: data
  })
}
// 删除宝宝奶瓶喂养
export function delSysBabyFoodFeedingBottle(ids) {
  return request({
    url: '/system/sysBabyFoodFeedingBottle/delete',
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
