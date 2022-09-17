package com.byk.ggkt.vod.controller;


import com.byk.ggkt.result.Result;
import com.byk.ggkt.vod.service.VideoVisitorService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * <p>
 * 视频来访者记录表 前端控制器
 * </p>
 *
 * @author byk
 * @since 2022-08-31
 */
@Api(value = "VideoVisitor管理", tags = "VideoVisitor管理")
@RestController
@RequestMapping("/admin/vod/videoVisitor")
//@CrossOrigin
public class VideoVisitorController {
    @Autowired
    private VideoVisitorService videoVisitorService;

    //课程统计的接口
    @ApiOperation("课程统计的接口")
    @GetMapping("findCount/{courseId}/{startDate}/{endDate}")
    public Result findCount(@PathVariable Long courseId,
                            @PathVariable String startDate,
                            @PathVariable String endDate){
        Map<String,Object> map = videoVisitorService.findCount(courseId,startDate,endDate);
        return Result.ok(map);
    }
}

