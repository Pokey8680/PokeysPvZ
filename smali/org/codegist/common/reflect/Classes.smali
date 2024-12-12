.class public final Lorg/codegist/common/reflect/Classes;
.super Ljava/lang/Object;
.source "Classes.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static isClassKnown(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const/4 v1, 0x1

    .line 33
    :goto_0
    return v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method
