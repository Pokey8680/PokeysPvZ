.class Lcom/millennialmedia/android/MMSDK$Event;
.super Ljava/lang/Object;
.source "MMSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# static fields
.field public static final INTENT_CALENDAR_EVENT:Ljava/lang/String; = "calendar"

.field public static final INTENT_EMAIL:Ljava/lang/String; = "email"

.field public static final INTENT_EXTERNAL_BROWSER:Ljava/lang/String; = "browser"

.field public static final INTENT_MAPS:Ljava/lang/String; = "geo"

.field public static final INTENT_MARKET:Ljava/lang/String; = "market"

.field public static final INTENT_PHONE_CALL:Ljava/lang/String; = "tel"

.field public static final INTENT_STREAMING_VIDEO:Ljava/lang/String; = "streamingVideo"

.field public static final INTENT_TXT_MESSAGE:Ljava/lang/String; = "sms"

.field private static final KEY_ERROR:Ljava/lang/String; = "error"

.field static final KEY_INTENT_TYPE:Ljava/lang/String; = "intentType"

.field static final KEY_INTERNAL_ID:Ljava/lang/String; = "internalId"

.field static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    const-class v0, Lcom/millennialmedia/android/MMSDK$Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/MMSDK$Event;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adSingleTap(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .param p0, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 276
    if-nez p0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    new-instance v0, Lcom/millennialmedia/android/MMSDK$Event$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMSDK$Event$2;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 301
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_AD_SINGLE_TAP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method static displayStarted(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .param p0, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 352
    if-nez p0, :cond_0

    .line 353
    const-string v0, "MMSDK"

    const-string v1, "No Context in the listener: "

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 361
    :cond_1
    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK$Event;->overlayOpened(Lcom/millennialmedia/android/MMAdImpl;)V

    goto :goto_0
.end method

.method static fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .param p0, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 321
    if-nez p0, :cond_1

    .line 322
    const-string v0, "MMSDK"

    const-string v1, "No Context in the listener: "

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    new-instance v0, Lcom/millennialmedia/android/MMSDK$Event$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMSDK$Event$3;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method static intentStarted(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentType"    # Ljava/lang/String;
    .param p2, "adImplId"    # J

    .prologue
    .line 311
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "intentType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 316
    :cond_0
    return-void
.end method

.method protected static logEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "logString"    # Ljava/lang/String;

    .prologue
    .line 257
    const-string v0, "Logging event to: %s"

    invoke-static {v0, p0}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/millennialmedia/android/MMSDK$Event$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMSDK$Event$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method static overlayClosed(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .param p0, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 408
    if-nez p0, :cond_1

    .line 409
    const-string v0, "MMSDK"

    const-string v1, "No Context in the listener: "

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    new-instance v0, Lcom/millennialmedia/android/MMSDK$Event$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMSDK$Event$5;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 431
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method static overlayOpened(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .param p0, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 367
    if-nez p0, :cond_0

    .line 368
    const-string v0, "MMSDK"

    const-string v1, "No Context in the listener: "

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 371
    :cond_0
    new-instance v0, Lcom/millennialmedia/android/MMSDK$Event$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMSDK$Event$4;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 390
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/android/MMSDK$Event;->overlayOpenedBroadCast(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method static overlayOpenedBroadCast(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adImplId"    # J

    .prologue
    .line 399
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Landroid/content/Intent;

    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1, p2}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    .line 403
    :cond_0
    return-void
.end method

.method static requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 6
    .param p0, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 441
    if-nez p0, :cond_1

    .line 442
    const-string v1, "MMSDK"

    const-string v2, "No Context in the listener: "

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMSDK$Event$6;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMSDK$Event$6;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 463
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getRequestCompletedAction()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v1, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method static requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
    .locals 6
    .param p0, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;
    .param p1, "error"    # Lcom/millennialmedia/android/MMException;

    .prologue
    .line 476
    if-nez p0, :cond_1

    .line 477
    const-string v1, "MMSDK"

    const-string v2, "No Context in the listener: "

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMSDK$Event$7;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/MMSDK$Event$7;-><init>(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 498
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getRequestFailedAction()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "error"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v1, v2, v4, v5}, Lcom/millennialmedia/android/MMSDK$Event;->sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V

    goto :goto_0
.end method

.method private static final sendIntent(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "adImplId"    # J

    .prologue
    .line 509
    if-eqz p0, :cond_1

    .line 510
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-wide/16 v2, -0x4

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 512
    const-string v1, "internalId"

    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 514
    :cond_0
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v1, "intentType"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 518
    const-string v1, " Type[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 522
    :goto_0
    const-string v1, "MMSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @@ Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 526
    .end local v0    # "type":Ljava/lang/String;
    :cond_1
    return-void

    .line 520
    .restart local v0    # "type":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
