.class public Lcom/ea/nimble/identity/NimbleIdentity;
.super Ljava/lang/Object;
.source "NimbleIdentity.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.identity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/identity/INimbleIdentity;
    .locals 1

    .prologue
    .line 20
    const-string v0, "com.ea.nimble.identity"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentity;

    return-object v0
.end method
