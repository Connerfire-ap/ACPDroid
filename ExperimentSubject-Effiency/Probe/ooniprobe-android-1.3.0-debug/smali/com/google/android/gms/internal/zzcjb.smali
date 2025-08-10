.class final Lcom/google/android/gms/internal/zzcjb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjfe:Lcom/google/android/gms/internal/zzciz;

.field private synthetic zzjff:Lcom/google/android/gms/internal/zzcjc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzciz;Lcom/google/android/gms/internal/zzcjc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjb;->zzjfe:Lcom/google/android/gms/internal/zzciz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjb;->zzjff:Lcom/google/android/gms/internal/zzcjc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjb;->zzjfe:Lcom/google/android/gms/internal/zzciz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjb;->zzjff:Lcom/google/android/gms/internal/zzcjc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzciz;->zza(Lcom/google/android/gms/internal/zzciz;Lcom/google/android/gms/internal/zzcjc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjb;->zzjfe:Lcom/google/android/gms/internal/zzciz;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzciz;->zzjes:Lcom/google/android/gms/internal/zzcjc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjb;->zzjfe:Lcom/google/android/gms/internal/zzciz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawd()Lcom/google/android/gms/internal/zzcjd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjd;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method
