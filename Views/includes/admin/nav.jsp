<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>



<header class="navbar navbar-default navbar-static-top">
    	<div class="container">
            <div class="navbar-header">
                <a href="index.jsp" class="navbar-brand"><img src="image/logo.png" class="img-responsive" alt=""></a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><i class="fa fa-bars"></i></button>
            </div>
            <div class="navbar-collapse collapse">
            	<ul class="nav navbar-nav">
                	<li class="active"><a href="index.jsp">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-caret-down"></i></a>
                        <ul class="dropdown-menu">
								<li>
									<a href="AdminController?action=stats">View Course Details</a>
								</li>
								<li>
									<a href="AdminController?action=add">Add course</a>
								</li>
								<li>
									<a href="AdminController?action=edit">Edit course</a>
								</li>
								<li>
									<a href="AdminController?action=delete">Delete Course</a>
								</li>
								<li>
									<a href="AdminController?action=user-stats">View User information</a>
								</li>
                        </ul>
                    </li>
                    <li><a href="HomeController?action=contact">Contact</a></li>
                </ul>
                <div class="navbar-right">
                	<form id="search-form" class="hidden-xs hidden-sm">
                    	<fieldset>
                            <div class="input-group">
                            	<input type="text" class="form-control">
                            	<span class="input-group-btn"><button class="btn btn-default" type="button"><i class="fa fa-search"></i></button></span>
                            </div>
                        </fieldset>
                    </form>
                	<ul class="list-unstyled list-inline" id="secondary-nav">
                         
                             <li><a href="#">Admin</a></li>
                             <li><a href="HomeController?action=logout">Log out</a></li>                           	
                        
                    </ul>
                </div>
            </div>
        </div>
    </header>