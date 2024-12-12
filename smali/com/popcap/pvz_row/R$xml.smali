.class public final Lcom/popcap/pvz_row/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz_row/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static components:I

.field public static nimble_log:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 659
    const/high16 v0, 0x7f040000

    sput v0, Lcom/popcap/pvz_row/R$xml;->components:I

    .line 660
    const v0, 0x7f040001

    sput v0, Lcom/popcap/pvz_row/R$xml;->nimble_log:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
