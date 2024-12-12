.class public Lcom/ea/nimble/SynergyNetwork;
.super Ljava/lang/Object;
.source "SynergyNetwork.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.synergynetwork"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/ISynergyNetwork;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/ea/nimble/SynergyNetworkImpl;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    return-object v0
.end method
