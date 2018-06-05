<%@page import="org.eclipse.jdt.internal.compiler.codegen.IntegerCache"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
    <script type='text/javascript'>
        function log(str)
        {
            var logConsole = document.getElementById("debugLog");
            logConsole.innerText += str + "\n";
            //log가 찍힌 뒤 스크롤 맨 밑으로 이동
            logConsole.scrollTop = logConsole.scrollHeight;
        }
 
        console.log = log;
        function createFileSystem(){
            window.requestFileSystem  = window.requestFileSystem || window.webkitRequestFileSystem;
 
            var fileSystem = window.requestFileSystem(window.PERSISTENT, 1024*1024, createdFS, showerr);
        };
             
        function createdFS(e)
        {
            fs = e.root;
        }
        function showerr(e)
        {
            log( "Error : " + e.message );
        }
 
        navigator.webkitPersistentStorage.requestQuota(1024*1024, createFileSystem, showerr);
 
        function createFile()
        {
            if(!fs)
            {
                log("Error : can't open FS");
                return;
            }
 
            var name = document.getElementById("fileName").value;
            fs.getFile(name, {create: true, exclusive: false}, successCreate, showerr);
        }
         
        function createDir()
        {
            if(!fs)
            {
                log("Error : can't open FS");
                return;
            }
            var name = document.getElementById("fileName").value;
            fs.getDirectory(name, {create: true, exclusive: false}, successCreate, showerr);
        }
 
        function successCreate(e)
        {
            log("file name : " + e.name);
            log("file path : " + e.fullPath)
        }
 
        function clearLog()
        {
            var logConsole = document.getElementById("debugLog");
            logConsole.innerText = "";
        }
 
        function loadList()
        {
            var dir = fs.createReader();
 
            while(dir.readEntries(fileListInDir, showerr))
                ;
        }
 
        function fileListInDir(file)
        {
            var fileListBox = document.getElementById("fileList");
 
            fileListBox.innerHTML = "";
            for(var i in file)
            {
                if(file[i].isFile)
                    fileListBox.innerHTML += "<a href='#' onclick='openFile(this)'>" + file[i].name + "</a><br />";
            }
        }
 
        function openFile(e)
        {
            var FileName = e.innerText;
            log(FileName);
            fs.getFile(FileName, {create:false}, successFileOpen, showerr);
 
             
        }
 
        function successFileOpen(e)
        {
            var readContents = function (e)
            {
                var reader = new FileReader();
                reader.onload = function(e){document.getElementById("fileContent").innerText = "Contents : " + e.target.result;};
                reader.readAsText(e);
            }
            e.file(readContents, showerr);
        }
 
    </script>
</head>
<body>
 
<span>
    <input type="text" id="fileName" />
    <input type="button" value="dir생성" onclick="createDir()" />
    <input type="button" value="file생성" onclick="createFile()" />
    <input type="button" value="file 목록" onclick="loadList()" />
</span>
 
 
<div id="fileList"></div>
 
<div id="fileContent"></div>
 
<div id="debugArea" style="margin-top:100px;">
    <span> Log <input type="button" value="clear" id="clearLog" onclick="clearLog()" /></span>
    <div id="debugLog" style="border:1px;overflow-y:scroll;height:200px"></div>
</div>
</body>
</html>