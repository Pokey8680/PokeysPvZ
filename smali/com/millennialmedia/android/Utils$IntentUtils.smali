.class Lcom/millennialmedia/android/Utils$IntentUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntentUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fixDataAndTypeForVideo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 164
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "lastPathSegment":Ljava/lang/String;
    const-string v2, "class"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".mkv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "content.once"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/*"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    .end local v1    # "lastPathSegment":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static getIntentForUri(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)Landroid/content/Intent;
    .locals 15
    .param p0, "listener"    # Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 181
    if-nez p0, :cond_1

    .line 182
    const/4 v5, 0x0

    .line 323
    :cond_0
    :goto_0
    return-object v5

    .line 183
    :cond_1
    const/4 v5, 0x0

    .line 184
    .local v5, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 186
    .local v7, "scheme":Ljava/lang/String;
    iget-object v4, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->destinationUri:Landroid/net/Uri;

    .line 187
    .local v4, "destinationUri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 188
    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 189
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 191
    const-string v9, "market"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 192
    const-string v9, "Utils"

    const-string v10, "Creating Android Market intent."

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "market"

    iget-wide v10, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v9, v10, v11}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 315
    :cond_2
    :goto_1
    if-eqz v5, :cond_12

    .line 316
    const-string v9, "Utils"

    const-string v10, "%s resolved to Intent: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v12

    aput-object v5, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_3
    const-string v9, "rtsp"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 198
    const-string v9, "Utils"

    const-string v10, "Creating streaming video player intent."

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-class v9, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v3, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    const-string v9, "class"

    const-string v10, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 203
    :cond_4
    const-string v9, "tel"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 205
    const-string v9, "Utils"

    const-string v10, "Creating telephone intent."

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.DIAL"

    invoke-direct {v5, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "tel"

    iget-wide v10, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v9, v10, v11}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1

    .line 210
    :cond_5
    const-string v9, "sms"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 213
    const-string v9, "Utils"

    const-string v10, "Creating txt message intent."

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "schemeParts":Ljava/lang/String;
    const-string v0, ""

    .line 217
    .local v0, "address":Ljava/lang/String;
    const-string v9, "?body="

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 218
    .local v2, "bodyIndex":I
    if-eq v2, v14, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v2, :cond_6

    .line 221
    invoke-virtual {v8, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 222
    const/16 v9, 0x2c

    const/16 v10, 0x3b

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_6
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sms:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .restart local v5    # "intent":Landroid/content/Intent;
    if-ne v2, v14, :cond_7

    .line 229
    add-int/lit8 v9, v2, 0x6

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "body":Ljava/lang/String;
    const-string v9, "sms_body"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    .end local v1    # "body":Ljava/lang/String;
    :cond_7
    const-string v9, "sms"

    iget-wide v10, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v9, v10, v11}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 237
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "bodyIndex":I
    .end local v8    # "schemeParts":Ljava/lang/String;
    :cond_8
    const-string v9, "mailto"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 238
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "email"

    iget-wide v10, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v9, v10, v11}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 242
    :cond_9
    const-string v9, "geo"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 243
    const-string v9, "Utils"

    const-string v10, "Creating Google Maps intent."

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 245
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "geo"

    iget-wide v10, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v9, v10, v11}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 248
    :cond_a
    const-string v9, "https"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 250
    const-string v9, "Utils"

    const-string v10, "Creating launch browser intent."

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "browser"

    iget-wide v10, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v9, v10, v11}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 255
    :cond_b
    const-string v9, "mmbrowser"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 256
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "mmBrowserUrl":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 263
    const-string v9, "://"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 264
    const-string v9, "//"

    const-string v10, "://"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 268
    :cond_c
    const-string v9, "Utils"

    const-string v10, "MMBrowser - Creating launch browser intent."

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 272
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "browser"

    iget-wide v10, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v9, v10, v11}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 275
    .end local v6    # "mmBrowserUrl":Ljava/lang/String;
    :cond_d
    const-string v9, "http"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 276
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".mp4"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".3gp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 280
    :cond_e
    const-string v9, "Utils"

    const-string v10, "Creating video player intent."

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-class v9, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v3, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 283
    const-string v9, "class"

    const-string v10, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v9, "streamingVideo"

    iget-wide v10, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v9, v10, v11}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 291
    :cond_f
    invoke-virtual {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->canOpenOverlay()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 292
    const-string v9, "Utils"

    const-string v10, "Creating launch overlay intent."

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-class v9, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v5, v3, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "class"

    const-class v10, Lcom/millennialmedia/android/AdViewOverlayActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 299
    :cond_10
    const-string v9, "Utils"

    const-string v10, "Creating launch browser intent."

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v9, "browser"

    iget-wide v10, p0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->creatorAdImplInternalId:J

    invoke-static {v3, v9, v10, v11}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 304
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 308
    :cond_11
    const-string v9, "Utils"

    const-string v10, "Creating intent for unrecognized URI. %s"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5    # "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 319
    :cond_12
    const-string v9, "Utils"

    const-string v10, "%s"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static startActionView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nextUrl"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .local v0, "actionIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 143
    return-void
.end method

.method static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 153
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    :cond_0
    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->fixDataAndTypeForVideo(Landroid/content/Context;Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method static startAdViewOverlayActivity(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method static startAdViewOverlayActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extrasAddedIntent"    # Landroid/content/Intent;

    .prologue
    .line 115
    const-class v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 116
    const-string v0, "class"

    const-string v1, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method static startAdViewOverlayActivityWithData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.AdViewOverlayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method static startCachedVideoPlayerActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extrasAddedIntent"    # Landroid/content/Intent;

    .prologue
    .line 132
    const-class v0, Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const-string v0, "class"

    const-string v1, "com.millennialmedia.android.CachedVideoPlayerActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-static {p0, p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method static startPickerActivity(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.BridgeMMMedia$PickerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    const-string v1, "class"

    const-string v2, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 78
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V

    .line 79
    return-void
.end method

.method static startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Landroid/net/Uri;)V

    .line 74
    return-void
.end method
