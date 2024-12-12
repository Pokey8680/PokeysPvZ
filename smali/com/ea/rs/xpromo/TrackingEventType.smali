.class public final enum Lcom/ea/rs/xpromo/TrackingEventType;
.super Ljava/lang/Enum;
.source "TrackingEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/rs/xpromo/TrackingEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ea/rs/xpromo/TrackingEventType;

.field public static final enum EVT_ERROR:Lcom/ea/rs/xpromo/TrackingEventType;

.field public static final enum EVT_ITEM_CLICK:Lcom/ea/rs/xpromo/TrackingEventType;

.field public static final enum EVT_ITEM_INSTALLED:Lcom/ea/rs/xpromo/TrackingEventType;

.field public static final enum EVT_UI_INTERACTION:Lcom/ea/rs/xpromo/TrackingEventType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/ea/rs/xpromo/TrackingEventType;

    const-string v1, "EVT_ITEM_CLICK"

    const/16 v2, 0x4a38

    invoke-direct {v0, v1, v3, v2}, Lcom/ea/rs/xpromo/TrackingEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ITEM_CLICK:Lcom/ea/rs/xpromo/TrackingEventType;

    .line 6
    new-instance v0, Lcom/ea/rs/xpromo/TrackingEventType;

    const-string v1, "EVT_ITEM_INSTALLED"

    const/16 v2, 0x4a39

    invoke-direct {v0, v1, v4, v2}, Lcom/ea/rs/xpromo/TrackingEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ITEM_INSTALLED:Lcom/ea/rs/xpromo/TrackingEventType;

    .line 7
    new-instance v0, Lcom/ea/rs/xpromo/TrackingEventType;

    const-string v1, "EVT_UI_INTERACTION"

    const/16 v2, 0x4a3a

    invoke-direct {v0, v1, v5, v2}, Lcom/ea/rs/xpromo/TrackingEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_UI_INTERACTION:Lcom/ea/rs/xpromo/TrackingEventType;

    .line 8
    new-instance v0, Lcom/ea/rs/xpromo/TrackingEventType;

    const-string v1, "EVT_ERROR"

    const/16 v2, 0x4a3b

    invoke-direct {v0, v1, v6, v2}, Lcom/ea/rs/xpromo/TrackingEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ERROR:Lcom/ea/rs/xpromo/TrackingEventType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ea/rs/xpromo/TrackingEventType;

    sget-object v1, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ITEM_CLICK:Lcom/ea/rs/xpromo/TrackingEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ITEM_INSTALLED:Lcom/ea/rs/xpromo/TrackingEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_UI_INTERACTION:Lcom/ea/rs/xpromo/TrackingEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ERROR:Lcom/ea/rs/xpromo/TrackingEventType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ea/rs/xpromo/TrackingEventType;->ENUM$VALUES:[Lcom/ea/rs/xpromo/TrackingEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/ea/rs/xpromo/TrackingEventType;->value:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/rs/xpromo/TrackingEventType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ea/rs/xpromo/TrackingEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/rs/xpromo/TrackingEventType;

    return-object v0
.end method

.method public static values()[Lcom/ea/rs/xpromo/TrackingEventType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ea/rs/xpromo/TrackingEventType;->ENUM$VALUES:[Lcom/ea/rs/xpromo/TrackingEventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/ea/rs/xpromo/TrackingEventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
