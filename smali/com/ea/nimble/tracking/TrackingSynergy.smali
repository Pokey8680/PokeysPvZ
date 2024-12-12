.class public Lcom/ea/nimble/tracking/TrackingSynergy;
.super Ljava/lang/Object;
.source "TrackingSynergy.java"


# static fields
.field public static final EVENT_CUSTOM:Ljava/lang/String; = "SYNERGYTRACKING::CUSTOM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initialize()V
    .locals 0

    .prologue
    .line 10
    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyComponent;->initialize()V

    .line 11
    return-void
.end method
