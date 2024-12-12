.class public Lcom/inmobi/re/controller/JSDisplayController;
.super Lcom/inmobi/re/controller/JSController;
.source "JSDisplayController.java"


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:F

.field private c:Lcom/inmobi/re/controller/JSController$OrientationProperties;

.field private d:Lcom/inmobi/re/controller/JSController$ResizeProperties;


# direct methods
.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/controller/JSController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/content/Context;)V

    .line 36
    iput-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->c:Lcom/inmobi/re/controller/JSController$OrientationProperties;

    .line 37
    iput-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    .line 49
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->a:Landroid/view/WindowManager;

    .line 52
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->b:F

    .line 55
    return-void
.end method

.method private a(Lcom/inmobi/re/controller/JSController$ExpandProperties;)Lcom/inmobi/re/controller/JSController$ExpandProperties;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 114
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 115
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 116
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v5, 0x1020002

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->topStuff:I

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v0, v4, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->bottomStuff:I

    .line 123
    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getDisplayRotation(Landroid/view/Display;)I

    move-result v0

    .line 124
    invoke-static {v0, v3, v4}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isDefOrientationLandscape(III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    move v0, v1

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iput-boolean v7, v2, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    :cond_1
    move v2, v0

    .line 133
    const-string v0, "[InMobi]-[RE]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device current rotation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "[InMobi]-[RE]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Density of device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/inmobi/re/controller/JSDisplayController;->b:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    int-to-float v0, v0

    iget v5, p0, Lcom/inmobi/re/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    .line 136
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    int-to-float v0, v0

    iget v5, p0, Lcom/inmobi/re/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    .line 137
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    int-to-float v0, v0

    iget v5, p0, Lcom/inmobi/re/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    .line 138
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    int-to-float v0, v0

    iget v5, p0, Lcom/inmobi/re/controller/JSDisplayController;->b:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    .line 139
    iput v1, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentX:I

    .line 140
    iput v1, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentY:I

    .line 142
    iget-object v5, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, v5, Lcom/inmobi/re/container/IMWebView;->publisherOrientation:I

    .line 145
    if-eqz v2, :cond_2

    if-ne v2, v8, :cond_c

    .line 146
    :cond_2
    const-string v0, "portrait"

    iput-object v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    .line 164
    :goto_0
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    if-lez v0, :cond_3

    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    if-gtz v0, :cond_4

    .line 165
    :cond_3
    iput v4, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    .line 166
    iput v3, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    .line 167
    iput-boolean v7, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    .line 170
    :cond_4
    if-eqz v2, :cond_5

    if-ne v2, v8, :cond_d

    .line 171
    :cond_5
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 172
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    .line 178
    :goto_1
    const-string v0, "[InMobi]-[RE]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Width: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Device height: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->topStuff:I

    sub-int v0, v4, v0

    .line 182
    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    if-le v2, v3, :cond_6

    iput v3, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    .line 183
    :cond_6
    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    if-le v2, v0, :cond_7

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    .line 185
    :cond_7
    new-array v2, v8, [I

    .line 186
    iget-object v4, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v4, v2}, Lcom/inmobi/re/container/IMWebView;->getLocationOnScreen([I)V

    .line 187
    iget v4, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    if-gez v4, :cond_8

    .line 188
    aget v4, v2, v1

    iput v4, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    .line 189
    :cond_8
    iget v4, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    if-gez v4, :cond_9

    .line 190
    aget v4, v2, v7

    iget v5, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->topStuff:I

    sub-int/2addr v4, v5

    iput v4, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    .line 191
    const-string v4, "[InMobi]-[RE]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "topStuff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->topStuff:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,bottomStuff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->bottomStuff:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_9
    const-string v4, "[InMobi]-[RE]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loc 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " loc 1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v2, v2, v7

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    iget v4, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    add-int/2addr v2, v4

    sub-int v2, v3, v2

    .line 198
    if-gez v2, :cond_a

    .line 199
    iget v3, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    .line 200
    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    if-gez v2, :cond_a

    .line 201
    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    iget v3, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    .line 202
    iput v1, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    .line 207
    :cond_a
    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    iget v3, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 208
    if-gez v0, :cond_b

    .line 209
    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    .line 210
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    if-gez v0, :cond_b

    .line 211
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    .line 212
    iput v1, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    .line 215
    :cond_b
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentX:I

    .line 216
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentY:I

    .line 217
    const-string v0, "[InMobi]-[RE]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final expanded width after density : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "final expanded height after density "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "portrait width requested :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "portrait height requested :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object p1

    .line 148
    :cond_c
    const-string v0, "landscape"

    iput-object v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    goto/16 :goto_0

    .line 174
    :cond_d
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 175
    iget v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    goto/16 :goto_1
.end method

.method private a(Lcom/inmobi/re/controller/JSController$ExpandProperties;Lcom/inmobi/re/controller/JSController$ExpandProperties;)V
    .locals 1

    .prologue
    .line 479
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    .line 480
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    .line 481
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    .line 482
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    .line 483
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->actualWidthRequested:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->actualWidthRequested:I

    .line 484
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->actualHeightRequested:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->actualHeightRequested:I

    .line 485
    iget-boolean v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    iput-boolean v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    .line 486
    iget-boolean v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->isModal:Z

    iput-boolean v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->isModal:Z

    .line 487
    iget-boolean v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->useCustomClose:Z

    iput-boolean v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->useCustomClose:Z

    .line 488
    iget-object v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    iput-object v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    .line 489
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->topStuff:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->topStuff:I

    .line 490
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->bottomStuff:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->bottomStuff:I

    .line 491
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitWidthRequested:I

    .line 492
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->portraitHeightRequested:I

    .line 493
    iget-boolean v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    iput-boolean v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->zeroWidthHeight:Z

    .line 494
    iget-object v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    iput-object v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->rotationAtExpand:Ljava/lang/String;

    .line 495
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentX:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentX:I

    .line 496
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentY:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentY:I

    .line 497
    return-void
.end method

.method private a(Lcom/inmobi/re/controller/JSController$ResizeProperties;Lcom/inmobi/re/controller/JSController$ResizeProperties;)V
    .locals 1

    .prologue
    .line 500
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    .line 501
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    .line 502
    iget-boolean v0, p2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    iput-boolean v0, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    .line 503
    iget-object v0, p2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    iput-object v0, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    .line 504
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    .line 505
    iget v0, p2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    iput v0, p1, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    .line 506
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 523
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    new-instance v3, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    invoke-direct {v2, v3, v0}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 524
    const-string v1, "[InMobi]-[RE]-4.4.3"

    const-string v2, "JSDisplayController-> close"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->close()V

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getExpandedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 534
    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->close()V

    .line 535
    if-eqz v0, :cond_2

    .line 537
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 539
    :cond_2
    return-void
.end method

.method public expand(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 344
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    new-instance v3, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 345
    const-string v1, "[InMobi]-[RE]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSDisplayController-> expand: url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v1, v2, :cond_1

    .line 349
    :cond_0
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "JSDisplayController-> Already expanded state"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v1, v2, :cond_2

    .line 354
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "JSDisplayController-> Expand cannot be called in hidden state. Doing nothing."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    const-string v1, "[InMobi]-[RE]-4.4.3"

    const-string v2, "Exception while expanding the ad. "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 357
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    .line 359
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v1, v2, :cond_3

    .line 362
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Current state is not default"

    const-string v2, "expand"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v1, v1, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v1, :cond_4

    .line 366
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Expand cannot be called on interstitial ad"

    const-string v2, "expand"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_4
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    invoke-direct {p0, v1, v2}, Lcom/inmobi/re/controller/JSDisplayController;->a(Lcom/inmobi/re/controller/JSController$ExpandProperties;Lcom/inmobi/re/controller/JSController$ExpandProperties;)V

    .line 371
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    const/4 v3, 0x0

    iput v3, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    iput v3, v1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    .line 372
    const-string v1, "[InMobi]-[RE]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSDisplayController-> At the time of expand the properties are: Expandable width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Expandable height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Expandable orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Expandable lock orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Expandable Modality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->isModal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Expandable Use custom close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    invoke-direct {p0, v1}, Lcom/inmobi/re/controller/JSDisplayController;->a(Lcom/inmobi/re/controller/JSController$ExpandProperties;)Lcom/inmobi/re/controller/JSController$ExpandProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    .line 397
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->c:Lcom/inmobi/re/controller/JSController$OrientationProperties;

    if-eqz v1, :cond_5

    .line 400
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->c:Lcom/inmobi/re/controller/JSController$OrientationProperties;

    iget-boolean v1, v1, Lcom/inmobi/re/controller/JSController$OrientationProperties;->allowOrientationChange:Z

    iput-boolean v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->lockOrientationValueForExpand:Z

    .line 401
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->c:Lcom/inmobi/re/controller/JSController$OrientationProperties;

    iget-object v1, v1, Lcom/inmobi/re/controller/JSController$OrientationProperties;->forceOrientation:Ljava/lang/String;

    iput-object v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->orientationValueForExpand:Ljava/lang/String;

    .line 410
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    invoke-direct {p0, v1}, Lcom/inmobi/re/controller/JSDisplayController;->a(Lcom/inmobi/re/controller/JSController$ExpandProperties;)Lcom/inmobi/re/controller/JSController$ExpandProperties;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/re/container/IMWebView;->expand(Ljava/lang/String;Lcom/inmobi/re/controller/JSController$ExpandProperties;)V

    goto/16 :goto_0

    .line 406
    :cond_5
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    if-nez v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    iput-boolean v0, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->lockOrientationValueForExpand:Z

    .line 407
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->temporaryexpProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v1, v1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    iput-object v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->orientationValueForExpand:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getExpandProperties()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 230
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 232
    :try_start_0
    const-string v1, "width"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    const-string v1, "height"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 234
    const-string v1, "isModal"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->isModal:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 235
    const-string v1, "useCustomClose"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 236
    const-string v1, "lockOrientation"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 237
    const-string v1, "orientation"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    const-string v1, "[InMobi]-[RE]-4.4.3"

    const-string v2, "Failed to get screen size"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 602
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->getCurrentRotation(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string v1, "[InMobi]-[RE]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSDisplayController-> getOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    return-object v0

    .line 607
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 608
    const-string v0, "-1"

    .line 609
    const-string v2, "[InMobi]-[RE]-4.4.3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getOrientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getOrientationProperties()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 246
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 248
    :try_start_0
    const-string v1, "allowOrientationChange"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->c:Lcom/inmobi/re/controller/JSController$OrientationProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$OrientationProperties;->allowOrientationChange:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 249
    const-string v1, "orientation"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->c:Lcom/inmobi/re/controller/JSController$OrientationProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$OrientationProperties;->forceOrientation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    const-string v1, "[InMobi]-[RE]-4.4.3"

    const-string v2, "Failed to get screen size"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 590
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 591
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "JSDisplayController-> getPlacementType"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getPlacementType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResizeProperties()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 258
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 260
    :try_start_0
    const-string v1, "width"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    const-string v1, "height"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    const-string v1, "offsetX"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    const-string v1, "offsetY"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 264
    const-string v1, "customClosePosition"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "allowOffscreen"

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    const-string v1, "[InMobi]-[RE]-4.4.3"

    const-string v2, "Failed to get screen size"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 95
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "JSDisplayController-> getState"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isViewable()Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 584
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 585
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "JSDisplayController-> isViewable"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    return v0
.end method

.method public onOrientationChange()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->onOrientationEventChange()V

    .line 474
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 89
    const-string v0, "[InMobi]-[RE]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSDisplayController-> open: url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->openURL(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$ExpandProperties;->reinitializeExpandProperties()V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSController$ResizeProperties;->initializeResizeProperties()V

    .line 706
    :cond_1
    return-void
.end method

.method public resize()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 429
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 430
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "JSDisplayController-> resize"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    .line 434
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "JSDisplayController-> Already resize state"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    .line 439
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "JSDisplayController-> Resize cannot be called in hidden state. Doing nothing."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    const-string v1, "[InMobi]-[RE]-4.4.3"

    const-string v2, "Exception while expanding the ad. "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 442
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_2

    .line 444
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Current state is neither default nor resized"

    const-string v2, "resize"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Resize cannot be called on interstitial ad"

    const-string v2, "resize"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_3
    new-instance v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$ResizeProperties;-><init>()V

    .line 452
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/re/controller/JSDisplayController;->a(Lcom/inmobi/re/controller/JSController$ResizeProperties;Lcom/inmobi/re/controller/JSController$ResizeProperties;)V

    .line 453
    iget v1, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    .line 454
    iget v1, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    .line 455
    iget v1, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    .line 456
    iget v1, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    .line 457
    const-string v1, "[InMobi]-[RE]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSDisplayController-> At the time of resize the properties are: Resize width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Resize height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Resize offsetX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Resize offsetY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " customClosePosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " allowOffscreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView;->resize(Lcom/inmobi/re/controller/JSController$ResizeProperties;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 273
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    new-instance v3, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 275
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;

    invoke-static {v0, v2}, Lcom/inmobi/re/controller/JSDisplayController;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iput-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    .line 278
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->isModal:Z

    .line 280
    const-string v0, "[InMobi]-[RE]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSDisplayController-> ExpandProperties is set: Expandable Width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Expandable height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Expandable orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Expandable lock orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Expandable Modality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->isModal:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Expandable Use Custom close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/IMWebView;->setCustomClose(Z)V

    .line 290
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    if-nez v0, :cond_0

    .line 291
    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v0, v0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v1, v1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOrientationPropertiesForInterstitial(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_1
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    const-string v1, "[InMobi]-[RE]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while setting the expand properties "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 317
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 319
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/inmobi/re/controller/JSController$OrientationProperties;

    invoke-static {v0, v1}, Lcom/inmobi/re/controller/JSDisplayController;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/JSController$OrientationProperties;

    iput-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->c:Lcom/inmobi/re/controller/JSController$OrientationProperties;

    .line 322
    const-string v0, "[InMobi]-[RE]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSDisplayController-> OrientationProperties is set: Expandable orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->orientation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Expandable lock orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->expProps:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/re/controller/JSDisplayController;->c:Lcom/inmobi/re/controller/JSController$OrientationProperties;

    iget-boolean v1, v1, Lcom/inmobi/re/controller/JSController$OrientationProperties;->allowOrientationChange:Z

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->c:Lcom/inmobi/re/controller/JSController$OrientationProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$OrientationProperties;->forceOrientation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->setOrientationPropertiesForInterstitial(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    const-string v1, "[InMobi]-[RE]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while setting the expand properties "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResizeProperties(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 300
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/inmobi/re/controller/JSController$ResizeProperties;

    invoke-static {v0, v1}, Lcom/inmobi/re/controller/JSDisplayController;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iput-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    .line 303
    const-string v0, "[InMobi]-[RE]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSDisplayController-> ResizeProperties is set: Resize Width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Resize height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Resize offsetX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Resize offsetY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->offsetY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " customClosePosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget-object v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->customClosePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " allowOffscreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/re/controller/JSDisplayController;->d:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ResizeProperties;->allowOffscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    const-string v1, "[InMobi]-[RE]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while setting the expand properties "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAllListeners()V
    .locals 0

    .prologue
    .line 699
    return-void
.end method

.method public useCustomClose(Z)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 513
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/metric/EventLog;

    new-instance v2, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/inmobi/commons/internal/ApiStatCollector$ApiEventType;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 514
    const-string v0, "[InMobi]-[RE]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSDisplayController-> useCustomClose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/inmobi/re/controller/JSDisplayController;->imWebView:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView;->setCustomClose(Z)V

    .line 516
    return-void
.end method
