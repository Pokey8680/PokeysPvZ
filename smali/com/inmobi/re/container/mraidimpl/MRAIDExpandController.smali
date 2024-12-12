.class public Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
.super Ljava/lang/Object;
.source "MRAIDExpandController.java"


# static fields
.field public static EXP_CLOSE_BUTTON:I = 0x0

.field protected static final PLACEHOLDER_ID:I = 0x1b5

.field protected static final RELATIVELAYOUT_ID:I = 0x1b6


# instance fields
.field private a:Lcom/inmobi/re/container/IMWebView;

.field private b:Landroid/app/Activity;

.field private c:Landroid/app/Activity;

.field private d:Lcom/inmobi/re/container/IMWebView;

.field private e:Lcom/inmobi/re/container/IMWebView;

.field public expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

.field public initialExpandOrientation:I

.field public lockOrientationValueForExpand:Z

.field public mIsExpandUrlValid:Z

.field public mSensorDisplay:Landroid/view/Display;

.field public orientationValueForExpand:Ljava/lang/String;

.field public tempExpPropsLock:Z

.field public useLockOrient:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xe1

    sput v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->EXP_CLOSE_BUTTON:I

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->tempExpPropsLock:Z

    .line 35
    iput-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    .line 44
    iput-boolean v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->lockOrientationValueForExpand:Z

    .line 51
    iput-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    .line 57
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    .line 58
    iput-object p2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    .line 59
    return-void
.end method

.method private a(Lcom/inmobi/re/controller/JSController$ExpandProperties;)Landroid/widget/FrameLayout;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 240
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 244
    invoke-direct {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a()V

    .line 248
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 249
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 254
    const/16 v3, 0x1b3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 260
    new-instance v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$b;

    invoke-direct {v3, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$b;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    iget v3, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    iget v4, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 270
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 274
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v5}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 275
    const/16 v5, 0x1b6

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 277
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v6

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    iget-boolean v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    if-eqz v6, :cond_0

    .line 281
    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    :goto_0
    iget-boolean v5, p1, Lcom/inmobi/re/controller/JSController$ExpandProperties;->useCustomClose:Z

    invoke-direct {p0, v4, v5}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a(Landroid/view/ViewGroup;Z)V

    .line 288
    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v8}, Lcom/inmobi/re/container/IMWebView;->setFocusable(Z)V

    .line 292
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v8}, Lcom/inmobi/re/container/IMWebView;->setFocusableInTouchMode(Z)V

    .line 293
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestFocus()Z

    .line 294
    return-object v1

    .line 283
    :cond_0
    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)Lcom/inmobi/re/container/IMWebView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 317
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 307
    const/16 v0, 0x1b5

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 308
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getHeight()I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 310
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getOriginalIndex()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string v1, "[InMobi]-[RE]-4.4.3"

    const-string v2, "Exception in replaceByPlaceHolder "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .prologue
    const/high16 v3, 0x42480000    # 50.0f

    .line 326
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 329
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 332
    if-eqz p2, :cond_0

    .line 333
    new-instance v0, Lcom/inmobi/re/container/CustomView;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v3

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v0, v2, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    .line 339
    :goto_0
    sget v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->EXP_CLOSE_BUTTON:I

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/CustomView;->setId(I)V

    .line 341
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    return-void

    .line 336
    :cond_0
    new-instance v0, Lcom/inmobi/re/container/CustomView;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v3

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v0, v2, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 393
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x1b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    move-object v1, v0

    .line 406
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getOriginalIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 408
    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->resetLayout()V

    .line 410
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public closeExpanded()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getViewState()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$ViewState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 194
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->releaseAllPlayers()V

    .line 195
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->releaseAllPlayers()V

    .line 197
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iput-object v2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    .line 198
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 204
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 206
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 207
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-boolean v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->tempExpPropsLock:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget v0, v0, Lcom/inmobi/re/container/IMWebView;->publisherOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 210
    iput-boolean v4, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->tempExpPropsLock:Z

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    invoke-direct {p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b()V

    .line 216
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->releaseAllPlayers()V

    .line 219
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getMRAIDUrls()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->closeExpanded()V

    .line 221
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v3}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    .line 223
    iput-boolean v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    .line 224
    iget-boolean v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    iget v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->initialExpandOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 229
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 200
    :cond_4
    iput-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disableEnableHardwareAccelerationForExpandWithURLView()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 467
    :cond_0
    return-void
.end method

.method public doExpand(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 73
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->saveOriginalViewParent()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    const/16 v1, 0x1b3

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 89
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "expand_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    .line 94
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v3, v3, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    .line 96
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    .line 98
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget v2, v2, Lcom/inmobi/re/container/IMWebView;->publisherOrientation:I

    iput v2, v0, Lcom/inmobi/re/container/IMWebView;->publisherOrientation:I

    .line 99
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, v2, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-boolean v2, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->tempExpPropsLock:Z

    iput-boolean v2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->tempExpPropsLock:Z

    .line 100
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    new-instance v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;

    invoke-direct {v2}, Lcom/inmobi/re/controller/JSController$ExpandProperties;-><init>()V

    iput-object v2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    .line 101
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v0, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, v2, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    iput v2, v0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    .line 102
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v0, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    iput v2, v0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    .line 103
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v0, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentX:I

    iput v2, v0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentX:I

    .line 104
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v0, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentY:I

    iput v2, v0, Lcom/inmobi/re/controller/JSController$ExpandProperties;->currentY:I

    .line 105
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, v2, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget v2, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->initialExpandOrientation:I

    iput v2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->initialExpandOrientation:I

    .line 106
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, v2, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-boolean v2, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    iput-boolean v2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    .line 107
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, v2, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-boolean v2, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    iput-boolean v2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    .line 108
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, v2, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    iput-object v2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    .line 109
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iput-object v2, v0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    .line 110
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/IMWebView;->setOriginalParent(Landroid/view/ViewParent;)V

    .line 112
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    invoke-direct {p0, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a(Lcom/inmobi/re/controller/JSController$ExpandProperties;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    const-class v4, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v3, "extra_browser_type"

    const/16 v4, 0x66

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setExpandedLayout(Landroid/widget/FrameLayout;)V

    .line 130
    iget-boolean v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setExpandedWebview(Lcom/inmobi/re/container/IMWebView;)V

    .line 138
    :goto_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setOriginalActivity(Landroid/app/Activity;)V

    .line 140
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    iput v2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoValidateWidth:I

    .line 147
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    iput v2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoValidateWidth:I

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 153
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 155
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 156
    :try_start_5
    iget-boolean v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    .line 161
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->invalidate()V

    .line 162
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$a;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController$a;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->postInHandler(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 180
    :goto_4
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    return-void

    .line 115
    :cond_4
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v1, "[InMobi]-[RE]-4.4.3"

    const-string v2, "Exception in doexpand "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    .line 174
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_7
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 177
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 136
    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setExpandedWebview(Lcom/inmobi/re/container/IMWebView;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 141
    :catch_1
    move-exception v0

    .line 143
    :try_start_9
    const-string v2, "[InMobi]-[RE]-4.4.3"

    const-string v3, "Exception in expand in separate activity "

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3

    .line 155
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 84
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public handleOrientationFor2Piece()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-boolean v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    if-nez v1, :cond_3

    .line 419
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->orientationValueForInterstitial:Ljava/lang/String;

    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamPortraitOrientation(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 458
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->orientationValueForInterstitial:Ljava/lang/String;

    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamLandscapeOrientation(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    const-string v1, "[InMobi]-[RE]-4.4.3"

    const-string v2, "IMWebview Handle orientation for 2 piece "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 433
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 434
    if-ne v0, v3, :cond_2

    .line 435
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "In allowFalse, none mode dev orientation:ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 439
    :cond_2
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "In allowFalse, none mode dev orientation:ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 447
    if-ne v0, v3, :cond_4

    .line 448
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "In allow true,  device orientation:ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_4
    const-string v0, "[InMobi]-[RE]-4.4.3"

    const-string v1, "In allow true,  device orientation:ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public handleOrientationForExpand()V
    .locals 4

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->e:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->c:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->lockOrientationValueForExpand:Z

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->orientationValueForExpand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/re/container/IMWebView;->lockExpandOrientation(Landroid/app/Activity;ZLjava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->c:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->lockOrientationValueForExpand:Z

    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->orientationValueForExpand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/re/container/IMWebView;->lockExpandOrientation(Landroid/app/Activity;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lcom/inmobi/re/controller/JSController$ExpandProperties;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    .line 462
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->c:Landroid/app/Activity;

    .line 67
    :cond_0
    return-void
.end method
