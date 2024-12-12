.class Lcom/google/inject/internal/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/Exceptions$UnhandledCheckedUserException;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0    # "throwable":Ljava/lang/Throwable;
    throw p0

    .line 46
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 47
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "throwable":Ljava/lang/Throwable;
    throw p0

    .line 49
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Lcom/google/inject/internal/Exceptions$UnhandledCheckedUserException;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Exceptions$UnhandledCheckedUserException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static rethrowCause(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    move-object v0, p0

    .line 36
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 39
    :cond_0
    invoke-static {v0}, Lcom/google/inject/internal/Exceptions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    return-object v1
.end method
