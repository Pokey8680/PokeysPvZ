.class public Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;
.super Ljava/lang/Object;
.source "AndroidRenderer.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/blast/AndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/AndroidRenderer;


# direct methods
.method public constructor <init>(Lcom/ea/blast/AndroidRenderer;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;->this$0:Lcom/ea/blast/AndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;->this$0:Lcom/ea/blast/AndroidRenderer;

    invoke-static {v0, v1}, Lcom/ea/blast/AndroidRenderer;->access$002(Lcom/ea/blast/AndroidRenderer;Z)Z

    .line 35
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 36
    return-void
.end method
