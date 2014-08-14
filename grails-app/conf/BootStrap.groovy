import com.wll.Role
import com.wll.User
import com.wll.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true) //管理员角色
        def adminUser = new User(username: 'admin', enabled: true, password: '1') .save(flush: true) //初始化管理员帐号
        UserRole.create adminUser, adminRole, true
    }
    def destroy = {
    }
}
