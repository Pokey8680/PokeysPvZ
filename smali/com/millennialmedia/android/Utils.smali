.class Lcom/millennialmedia/android/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/Utils$IntentUtils;,
        Lcom/millennialmedia/android/Utils$HttpUtils;,
        Lcom/millennialmedia/android/Utils$ThreadUtils;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static getViewDimensions(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 330
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 332
    .local v0, "dimensions":Lorg/json/JSONObject;
    if-nez p0, :cond_1

    .line 333
    const-string v4, "Utils"

    const-string v5, "Unable to calculate view dimensions for null view"

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 338
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 341
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    if-eqz v3, :cond_0

    .line 342
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 343
    .local v2, "location":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 346
    :try_start_0
    const-string v4, "x"

    const/4 v5, 0x0

    aget v5, v2, v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string v4, "y"

    const/4 v5, 0x1

    aget v5, v2, v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v4, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string v4, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "Utils"

    const-string v5, "Unable to build view dimensions"

    invoke-static {v4, v5, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
