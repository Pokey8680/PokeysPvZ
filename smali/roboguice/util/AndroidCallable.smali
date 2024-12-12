.class public abstract Lroboguice/util/AndroidCallable;
.super Ljava/lang/Object;
.source "AndroidCallable.java"

# interfaces
.implements Lroboguice/util/AndroidCallableI;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lroboguice/util/AndroidCallableI",
        "<TResultT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected creationLocation:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lroboguice/util/AndroidCallable;, "Lroboguice/util/AndroidCallable<TResultT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lroboguice/util/Ln;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lroboguice/util/AndroidCallable;->creationLocation:[Ljava/lang/StackTraceElement;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFinally()V
    .locals 0

    .prologue
    .line 33
    .local p0, "this":Lroboguice/util/AndroidCallable;, "Lroboguice/util/AndroidCallable<TResultT;>;"
    return-void
.end method

.method public onPreCall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lroboguice/util/AndroidCallable;, "Lroboguice/util/AndroidCallable<TResultT;>;"
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 20
    .local p0, "this":Lroboguice/util/AndroidCallable;, "Lroboguice/util/AndroidCallable<TResultT;>;"
    new-instance v0, Lroboguice/util/AndroidCallableWrapper;

    const/4 v1, 0x0

    iget-object v2, p0, Lroboguice/util/AndroidCallable;->creationLocation:[Ljava/lang/StackTraceElement;

    invoke-direct {v0, v1, p0, v2}, Lroboguice/util/AndroidCallableWrapper;-><init>(Landroid/os/Handler;Lroboguice/util/AndroidCallableI;[Ljava/lang/StackTraceElement;)V

    invoke-virtual {v0}, Lroboguice/util/AndroidCallableWrapper;->run()V

    .line 21
    return-void
.end method
