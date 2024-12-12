.class public Lcom/popcap/pvz_row/impl/V3CustomNotification;
.super Ljava/lang/Object;
.source "V3CustomNotification.java"

# interfaces
.implements Lcom/popcap/pvz_row/impl/DownloadNotification$ICustomNotification;


# instance fields
.field mCurrentBytes:J

.field mIcon:I

.field mNotification:Landroid/app/Notification;

.field mPendingIntent:Landroid/app/PendingIntent;

.field mTicker:Ljava/lang/CharSequence;

.field mTimeRemaining:J

.field mTitle:Ljava/lang/CharSequence;

.field mTotalBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v0, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTotalBytes:J

    .line 37
    iput-wide v0, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mCurrentBytes:J

    .line 40
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mNotification:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public setCurrentBytes(J)V
    .locals 1
    .param p1, "currentBytes"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mCurrentBytes:J

    .line 60
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mIcon:I

    .line 45
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "contentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    .line 106
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "ticker"    # Ljava/lang/CharSequence;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTicker:Ljava/lang/CharSequence;

    .line 111
    return-void
.end method

.method public setTimeRemaining(J)V
    .locals 1
    .param p1, "timeRemaining"    # J

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTimeRemaining:J

    .line 116
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTitle:Ljava/lang/CharSequence;

    .line 50
    return-void
.end method

.method public setTotalBytes(J)V
    .locals 1
    .param p1, "totalBytes"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTotalBytes:J

    .line 55
    return-void
.end method

.method public updateNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 12
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 64
    iget-object v1, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mNotification:Landroid/app/Notification;

    .line 66
    .local v1, "n":Landroid/app/Notification;
    iget v2, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mIcon:I

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 68
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 70
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-le v2, v5, :cond_0

    .line 71
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 76
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/popcap/pvz_row/R$layout;->status_bar_ongoing_event_progress_bar:I

    invoke-direct {v0, v2, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v0, "expandedView":Landroid/widget/RemoteViews;
    sget v2, Lcom/popcap/pvz_row/R$id;->title:I

    iget-object v5, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 82
    sget v2, Lcom/popcap/pvz_row/R$id;->description:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    sget v2, Lcom/popcap/pvz_row/R$id;->description:I

    iget-wide v6, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mCurrentBytes:J

    iget-wide v8, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTotalBytes:J

    invoke-static {v6, v7, v8, v9}, Lcom/popcap/pvz_row/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 85
    sget v2, Lcom/popcap/pvz_row/R$id;->progress_bar_frame:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 86
    sget v5, Lcom/popcap/pvz_row/R$id;->progress_bar:I

    iget-wide v6, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTotalBytes:J

    shr-long/2addr v6, v10

    long-to-int v6, v6

    iget-wide v8, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mCurrentBytes:J

    shr-long/2addr v8, v10

    long-to-int v7, v8

    iget-wide v8, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTotalBytes:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gtz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v6, v7, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 90
    sget v2, Lcom/popcap/pvz_row/R$id;->time_remaining:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 91
    sget v2, Lcom/popcap/pvz_row/R$id;->time_remaining:I

    sget v5, Lcom/popcap/pvz_row/R$string;->time_remaining_notification:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTimeRemaining:J

    invoke-static {v6, v7}, Lcom/popcap/pvz_row/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 95
    sget v2, Lcom/popcap/pvz_row/R$id;->progress_text:I

    iget-wide v4, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mCurrentBytes:J

    iget-wide v6, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mTotalBytes:J

    invoke-static {v4, v5, v6, v7}, Lcom/popcap/pvz_row/Helpers;->getDownloadProgressPercent(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 97
    sget v2, Lcom/popcap/pvz_row/R$id;->appIcon:I

    iget v3, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mIcon:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 98
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 99
    iget-object v2, p0, Lcom/popcap/pvz_row/impl/V3CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 100
    return-object v1

    :cond_1
    move v2, v4

    .line 86
    goto :goto_0
.end method
