.class public Lorg/codegist/crest/CRestException;
.super Ljava/lang/RuntimeException;
.source "CRestException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public static handle(Ljava/lang/IllegalArgumentException;)Ljava/lang/RuntimeException;
    .locals 0
    .param p0, "e"    # Ljava/lang/IllegalArgumentException;

    .prologue
    .line 76
    return-object p0
.end method

.method public static handle(Ljava/lang/IllegalStateException;)Ljava/lang/RuntimeException;
    .locals 0
    .param p0, "e"    # Ljava/lang/IllegalStateException;

    .prologue
    .line 80
    return-object p0
.end method

.method public static handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    instance-of v0, p0, Lorg/codegist/crest/CRestException;

    if-eqz v0, :cond_0

    .line 53
    check-cast p0, Lorg/codegist/crest/CRestException;

    .end local p0    # "e":Ljava/lang/Throwable;
    invoke-static {p0}, Lorg/codegist/crest/CRestException;->handle(Lorg/codegist/crest/CRestException;)Ljava/lang/RuntimeException;

    move-result-object v0

    .line 63
    .restart local p0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0

    .line 54
    :cond_0
    instance-of v0, p0, Lorg/codegist/crest/io/RequestException;

    if-eqz v0, :cond_1

    .line 55
    check-cast p0, Lorg/codegist/crest/io/RequestException;

    .end local p0    # "e":Ljava/lang/Throwable;
    invoke-static {p0}, Lorg/codegist/crest/CRestException;->handle(Lorg/codegist/crest/io/RequestException;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_0

    .line 56
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    .line 57
    check-cast p0, Ljava/lang/IllegalArgumentException;

    .end local p0    # "e":Ljava/lang/Throwable;
    invoke-static {p0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/IllegalArgumentException;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_0

    .line 58
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_2
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_3

    .line 59
    check-cast p0, Ljava/lang/IllegalStateException;

    .end local p0    # "e":Ljava/lang/Throwable;
    invoke-static {p0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/IllegalStateException;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_0

    .line 60
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_4

    .line 61
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    .end local p0    # "e":Ljava/lang/Throwable;
    invoke-static {p0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_0

    .line 63
    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_4
    new-instance v0, Lorg/codegist/crest/CRestException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/codegist/crest/CRestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static handle(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "e"    # Ljava/lang/reflect/InvocationTargetException;

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static handle(Lorg/codegist/crest/CRestException;)Ljava/lang/RuntimeException;
    .locals 0
    .param p0, "e"    # Lorg/codegist/crest/CRestException;

    .prologue
    .line 68
    return-object p0
.end method

.method public static handle(Lorg/codegist/crest/io/RequestException;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "e"    # Lorg/codegist/crest/io/RequestException;

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/codegist/crest/io/RequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codegist/crest/io/RequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codegist/crest/CRestException;

    invoke-virtual {p0}, Lorg/codegist/crest/io/RequestException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/codegist/crest/CRestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
