.class public final Lcom/popcap/pvz_row/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz_row/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static downloader_row:I

.field public static status_bar_ongoing_event_progress_bar:I

.field public static terms:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 466
    const/high16 v0, 0x7f030000

    sput v0, Lcom/popcap/pvz_row/R$layout;->downloader_row:I

    .line 467
    const v0, 0x7f030001

    sput v0, Lcom/popcap/pvz_row/R$layout;->status_bar_ongoing_event_progress_bar:I

    .line 468
    const v0, 0x7f030002

    sput v0, Lcom/popcap/pvz_row/R$layout;->terms:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
