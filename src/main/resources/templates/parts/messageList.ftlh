<#include "security.ftlh">

<div class="card-columns" id="message-list">
    <#list messages as message>
    <div class="card my-3" data-id="${message.id}">
        <div>
            <#if message.filename??>
            <img scr="/img/${message.filename}" class="card-img-top" />
            <img src="/img/${message.filename}" />
            </#if>
        </div>
        <div class="m-2">
            <br><span>${message.text}</span></br>
            <i>#${message.tag}</i>
        </div>
        <div class="card-footer text-muted">
            <a href="/user-messages/${message.author.id}">${message.authorName}</a>
            <#if message.author.id == currentUserId>
                <a href="/user-messages/${message.author.id}?message=${message.id}">Edit</a>
            </#if>
        </div>
    </div>
<#else>
No message
</#list>
</div>