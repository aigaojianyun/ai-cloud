package com.cloud.auth.api.factory;

import com.cloud.auth.api.domain.User;
import com.cloud.auth.api.domain.vo.LoginUser;
import com.cloud.auth.api.service.RemoteUserService;
import com.cloud.common.model.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.openfeign.FallbackFactory;
import org.springframework.stereotype.Component;

/**
 * 用户服务降级处理
 *
 * @author
 */
@Component
public class RemoteUserFallbackFactory implements FallbackFactory<RemoteUserService> {
    private static final Logger log = LoggerFactory.getLogger(RemoteUserFallbackFactory.class);

    @Override
    public RemoteUserService create(Throwable throwable) {
        log.error("用户服务调用失败:{}", throwable.getMessage());
        return new RemoteUserService() {
            @Override
            public Response<LoginUser> getUserInfo(String username, String source) {
                return Response.fail("获取用户失败:" + throwable.getMessage());
            }

            @Override
            public Response<Boolean> registerUserInfo(User user, String source) {
                return Response.fail("注册用户失败:" + throwable.getMessage());
            }
        };
    }
}