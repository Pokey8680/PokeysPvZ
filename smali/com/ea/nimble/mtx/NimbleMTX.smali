.class public Lcom/ea/nimble/mtx/NimbleMTX;
.super Ljava/lang/Object;
.source "NimbleMTX.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.mtx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/mtx/INimbleMTX;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 21
    const-string v1, "com.ea.nimble.mtx"

    invoke-static {v1}, Lcom/ea/nimble/Base;->getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;

    move-result-object v0

    .line 22
    .local v0, "componentList":[Lcom/ea/nimble/Component;
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 24
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 26
    const-string v1, "MTX"

    const-string v2, "More than one MTX component registered!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_0
    aget-object v1, v0, v4

    check-cast v1, Lcom/ea/nimble/mtx/INimbleMTX;

    .line 32
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
