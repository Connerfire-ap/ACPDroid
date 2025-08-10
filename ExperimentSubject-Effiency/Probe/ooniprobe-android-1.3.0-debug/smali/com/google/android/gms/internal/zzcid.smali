.class final Lcom/google/android/gms/internal/zzcid;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjds:Lcom/google/android/gms/internal/zzcff;

.field private synthetic zzjdt:Lcom/google/android/gms/internal/zzcho;

.field private synthetic zzjdy:Lcom/google/android/gms/internal/zzckk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcho;Lcom/google/android/gms/internal/zzckk;Lcom/google/android/gms/internal/zzcff;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcid;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcid;->zzjdy:Lcom/google/android/gms/internal/zzckk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcid;->zzjds:Lcom/google/android/gms/internal/zzcff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcid;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcho;->zza(Lcom/google/android/gms/internal/zzcho;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzazz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcid;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcho;->zza(Lcom/google/android/gms/internal/zzcho;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcid;->zzjdy:Lcom/google/android/gms/internal/zzckk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcid;->zzjds:Lcom/google/android/gms/internal/zzcff;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzchj;->zzb(Lcom/google/android/gms/internal/zzckk;Lcom/google/android/gms/internal/zzcff;)V

    return-void
.end method
