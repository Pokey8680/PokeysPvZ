.class Lcom/google/android/gms/internal/zzjv$zzc$1;
.super Lcom/google/android/gms/internal/zzjx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjv$zzc;->zza(Lcom/google/android/gms/internal/zzjw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzRp:Lcom/google/android/gms/internal/zzjv$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjv$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjv$zzc$1;->zzRp:Lcom/google/android/gms/internal/zzjv$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjx$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjv$zzc$1;->zzRp:Lcom/google/android/gms/internal/zzjv$zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzjv$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method