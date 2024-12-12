.class Lcom/millennialmedia/android/BridgeMMBanner;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMBanner.java"


# static fields
.field static final RESIZE:Ljava/lang/String; = "resize"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method executeCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 109
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    const-string v1, "resize"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMBanner;->resize(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 113
    :cond_0
    return-object v0
.end method

.method getScreenHeight(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->getDpiHeight(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK;->getDpiWidth(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resize(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/BridgeMMBanner;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/millennialmedia/android/MMWebView;

    .line 42
    .local v14, "mmWebView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v14, :cond_5

    .line 43
    invoke-virtual {v14}, Lcom/millennialmedia/android/MMWebView;->isMraidResized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "State is currently resized"

    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 92
    :goto_0
    return-object v2

    .line 48
    :cond_0
    const-string v2, "width"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 49
    .local v17, "widthArg":Ljava/lang/String;
    const-string v2, "height"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 51
    .local v12, "heightArg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 52
    .local v3, "width":I
    const/4 v4, 0x0

    .line 53
    .local v4, "height":I
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v3, v2

    .line 57
    :cond_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 58
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v4, v2

    .line 61
    :cond_2
    const-string v2, "customClosePosition"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 62
    .local v5, "customClosePosition":Ljava/lang/String;
    const-string v2, "offsetX"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 63
    .local v15, "offsetXArg":Ljava/lang/String;
    const-string v2, "offsetY"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 64
    .local v16, "offsetYArg":Ljava/lang/String;
    const/4 v7, 0x0

    .line 65
    .local v7, "offsetY":I
    const/4 v6, 0x0

    .line 67
    .local v6, "offsetX":I
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 68
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v7, v2

    .line 71
    :cond_3
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 72
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v6, v2

    .line 75
    :cond_4
    const-string v2, "allowOffscreen"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 78
    .local v8, "allowOffScreen":Z
    invoke-virtual {v14}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 79
    .local v11, "context":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 82
    .local v13, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/millennialmedia/android/BridgeMMBanner;->getScreenWidth(Landroid/content/Context;)I

    move-result v9

    .line 83
    .local v9, "xMax":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/millennialmedia/android/BridgeMMBanner;->getScreenHeight(Landroid/content/Context;)I

    move-result v10

    .line 84
    .local v10, "yMax":I
    new-instance v1, Lcom/millennialmedia/android/DTOResizeParameters;

    iget v2, v13, Landroid/util/DisplayMetrics;->density:F

    invoke-direct/range {v1 .. v10}, Lcom/millennialmedia/android/DTOResizeParameters;-><init>(FIILjava/lang/String;IIZII)V

    .line 88
    .local v1, "resizeParams":Lcom/millennialmedia/android/DTOResizeParameters;
    invoke-virtual {v14, v1}, Lcom/millennialmedia/android/MMWebView;->setMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V

    .line 90
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    goto/16 :goto_0

    .line 92
    .end local v1    # "resizeParams":Lcom/millennialmedia/android/DTOResizeParameters;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "customClosePosition":Ljava/lang/String;
    .end local v6    # "offsetX":I
    .end local v7    # "offsetY":I
    .end local v8    # "allowOffScreen":Z
    .end local v9    # "xMax":I
    .end local v10    # "yMax":I
    .end local v11    # "context":Landroid/content/Context;
    .end local v12    # "heightArg":Ljava/lang/String;
    .end local v13    # "metrics":Landroid/util/DisplayMetrics;
    .end local v15    # "offsetXArg":Ljava/lang/String;
    .end local v16    # "offsetYArg":Ljava/lang/String;
    .end local v17    # "widthArg":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
