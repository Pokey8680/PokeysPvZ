.class Lcom/millennialmedia/android/BridgeMMSpeechkit$SingletonHolder;
.super Ljava/lang/Object;
.source "BridgeMMSpeechkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/BridgeMMSpeechkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;-><init>(Lcom/millennialmedia/android/BridgeMMSpeechkit$1;)V

    sput-object v0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SingletonHolder;->INSTANCE:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
