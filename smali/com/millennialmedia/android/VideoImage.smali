.class Lcom/millennialmedia/android/VideoImage;
.super Ljava/lang/Object;
.source "VideoImage.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field static final serialVersionUID:J = 0xb37c805a5f2be9dL


# instance fields
.field anchor:I

.field anchor2:I

.field appearanceDelay:J

.field button:Landroid/widget/ImageButton;

.field contentLength:J

.field eventLoggingUrls:[Ljava/lang/String;

.field fadeDuration:J

.field fromAlpha:F

.field imageUrl:Ljava/lang/String;

.field inactivityTimeout:J

.field isLeaveBehind:Z

.field layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field linkUrl:Ljava/lang/String;

.field overlayOrientation:Ljava/lang/String;

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field position:I

.field position2:I

.field toAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/VideoImage;->TAG:Ljava/lang/String;

    .line 210
    new-instance v0, Lcom/millennialmedia/android/VideoImage$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoImage$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 36
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 37
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 38
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 51
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 53
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 55
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 36
    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 37
    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 38
    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 51
    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 53
    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 55
    const-wide/16 v4, 0x3e8

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 105
    .local v1, "len":I
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v1    # "len":I
    :goto_1
    return-void

    .restart local v1    # "len":I
    :cond_0
    move v2, v3

    .line 122
    goto :goto_0

    .line 123
    .end local v1    # "len":I
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/millennialmedia/android/VideoImage;->TAG:Ljava/lang/String;

    const-string v3, "VideoImage parcel creation exception: "

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "imageObject"    # Lorg/json/JSONObject;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 36
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 37
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 38
    iput v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 51
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 53
    iput v1, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 55
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 94
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoImage;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 95
    return-void
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "imageObject"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 138
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v3, "image"

    invoke-virtual {p1, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 142
    const-string v3, "contentLength"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    .line 143
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 144
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    .end local v0    # "i":I
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    .line 151
    :cond_2
    const-string v3, "url"

    invoke-virtual {p1, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 152
    const-string v3, "overlayOrientation"

    invoke-virtual {p1, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    .line 153
    const-string v3, "android-layout"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 154
    const-string v3, "android-layoutAnchor"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 155
    const-string v3, "android-layout2"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 156
    const-string v3, "android-layoutAnchor2"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 157
    const-string v3, "android-paddingTop"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 158
    const-string v3, "android-paddingLeft"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 159
    const-string v3, "android-paddingRight"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 160
    const-string v3, "android-paddingBottom"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 161
    const-string v3, "appearanceDelay"

    invoke-virtual {p1, v3, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 162
    const-string v3, "inactivityTimeout"

    invoke-virtual {p1, v3, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 164
    const-string v3, "opacity"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 165
    .local v2, "opacityObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_3

    .line 166
    const-string v3, "start"

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 167
    const-string v3, "end"

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 168
    const-string v3, "fadeDuration"

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-long v4, v4

    iput-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 170
    :cond_3
    const-string v3, "is_leavebehind"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method getImageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "temp":Landroid/net/Uri;
    iget-object v1, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\.[^\\.]*$"

    const-string v3, ".dat"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    .line 232
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    .line 233
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 234
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    .line 235
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 236
    iget-object v3, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v1

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    .line 238
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    .line 239
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    .line 240
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    .line 241
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    .line 242
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    .line 243
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    .line 244
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    .line 245
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    .line 246
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    .line 247
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    .line 248
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    .line 249
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    .line 250
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    .line 251
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    .line 252
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    .line 253
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v4, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 259
    iget-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 260
    iget-object v4, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    array-length v4, v4

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 261
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 262
    .local v3, "temp":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v3    # "temp":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 264
    iget-object v4, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 265
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 266
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 267
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 268
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 269
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 270
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 271
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 272
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 273
    iget-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 274
    iget-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 275
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 276
    iget v4, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 277
    iget-wide v4, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 278
    iget-boolean v4, p0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 279
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->eventLoggingUrls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/millennialmedia/android/VideoImage;->overlayOrientation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->position2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 200
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 201
    iget v0, p0, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 202
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 203
    iget-boolean v0, p0, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
