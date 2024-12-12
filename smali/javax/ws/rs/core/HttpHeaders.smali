.class public interface abstract Ljavax/ws/rs/core/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "Accept"

.field public static final ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_LOCATION:Ljava/lang/String; = "Content-Location"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final COOKIE:Ljava/lang/String; = "Cookie"

.field public static final DATE:Ljava/lang/String; = "Date"

.field public static final ETAG:Ljava/lang/String; = "ETag"

.field public static final EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HOST:Ljava/lang/String; = "Host"

.field public static final IF_MATCH:Ljava/lang/String; = "If-Match"

.field public static final IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final IF_UNMODIFIED_SINCE:Ljava/lang/String; = "If-Unmodified-Since"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field public static final SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final VARY:Ljava/lang/String; = "Vary"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "WWW-Authenticate"


# virtual methods
.method public abstract getAcceptableLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAcceptableMediaTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/ws/rs/core/MediaType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCookies()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/ws/rs/core/Cookie;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLanguage()Ljava/util/Locale;
.end method

.method public abstract getMediaType()Ljavax/ws/rs/core/MediaType;
.end method

.method public abstract getRequestHeader(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestHeaders()Ljavax/ws/rs/core/MultivaluedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/ws/rs/core/MultivaluedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
