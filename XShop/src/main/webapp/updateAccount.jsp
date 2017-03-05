<%-- 
    Document   : updateAccount
    Created on : Mar 1, 2017, 9:38:42 AM
    Author     : michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--A JSP for the Edit profile view for the user
1. includes the header JSP
2. fills the field with the view of profile editing
3. Sets the action on the Update button to call the servlet "UpdateUserAcct.java"
4. includes the footer JSP-->

<div class="col-md-9">
    <div class="box">
        <c:set var="userData" value="${requestScope.user_object}"></c:set>
        <h1>My account</h1>
        <p class="lead">Change your personal details or your password here.</p>

        <hr>
        <h3>Personal details</h3>

        <form action="updateaccount" method="POST">
            <div class="form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="name">Name *</label>
                        <input name="name" type="text" class="form-control" id="name" value="${userData.name}" style="padding:10px">
                        
                    </div>
                    <div class="form-group">
                        <label for="email">Email *</label>
                        <input name="email" type="text" class="form-control" id="email" value="${userData.email}" style="padding:10px">
                        <c:if test="${!empty requestScope.erroremail}"> 
                        <span class="pull-right" style="color: #e74c3c">Email Already Exists</span>
                        </c:if>
                    </div>

                    <div class="form-group">
                        <label for="password">Password *</label>
                        <input name="password" type="password" class="form-control" id="password" style="padding:10px">
                    </div>

                    <div class="form-group">
                        <label for="password">Confrim Password *</label>
                        <input name="repeatedPassword" type="password" class="form-control" id="password" style="padding:10px">
                        <c:if test="${!empty requestScope.errorpassword}"> 
                        <span class="pull-right" style="color: #e74c3c">Passwords don't match</span>
                        </c:if>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label for="name">Job</label>
                        <input name="job" type="text" class="form-control" id="name" value="${userData.job}" style="padding:10px">
                    </div>

                    <div class="form-group">
                        <label for="name">Address</label>
                        <input name="address" type="text" class="form-control" id="name" value="${userData.address}" style="padding:10px">
                    </div>

                    <div class="form-group">
                        <label for="name">Date of Birth</label>
                        <input name="dOB" type="date" class="form-control" id="name" value="${userData.dob}" style="padding:2px">
                    </div>

                    <legend>What are your interests ?</legend>

                    <div class="form-group">
                        <div class="col-md-6">
                            <input type="checkbox" name="interest" value="clothes" /> Clothes<br/>
                            <input type="checkbox" name="interest" value="electronics"/> Electronics<br/>
                            <input type="checkbox" name="interest" value="watches"/> Watches<br />
                        </div>

                        <div class="col-md-6">
                            <input type="checkbox" name="interest" value="jewlery"/> Jewlery<br/>
                            <input type="checkbox" name="interest" value="electronics"/> Electronics<br/>
                            <input type="checkbox" name="interest" value="watches"/> Watches<br />
                        </div>
                    </div>
                </div>
            </div>

            <small>* required fields</small>
            <div class="text-center">
                <button type="submit" class="btn btn-primary" style="border-radius: 3px;"><i class="fa fa-floppy-o"></i> Save Changes</button>
                <button type="submit" class="btn btn-primary" style="border-radius: 3px;"><i class="fa fa-fa-ban"></i> Cancel</button>
            </div>
        </form>
    </div>
</div>
