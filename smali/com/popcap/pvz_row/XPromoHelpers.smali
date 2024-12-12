.class public abstract Lcom/popcap/pvz_row/XPromoHelpers;
.super Ljava/lang/Object;
.source "XPromoHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DpToPx(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .prologue
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 11
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-float v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 12
    .local v1, "px":I
    return v1
.end method

.method public static PxToDp(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 18
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-float v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 19
    .local v1, "dp":I
    return v1
.end method
