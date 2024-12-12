.class public Lcom/ea/nimble/Facebook;
.super Ljava/lang/Object;
.source "Facebook.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.facebook"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/IFacebook;
    .locals 1

    .prologue
    .line 15
    const-string v0, "com.ea.nimble.facebook"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IFacebook;

    return-object v0
.end method

.method private static initialize()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/ea/nimble/FacebookImpl;

    invoke-direct {v0}, Lcom/ea/nimble/FacebookImpl;-><init>()V

    const-string v1, "com.ea.nimble.facebook"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 11
    return-void
.end method
