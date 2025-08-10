.class final Lcom/google/android/gms/internal/zzcig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzijk:Ljava/lang/String;

.field private synthetic zzjdt:Lcom/google/android/gms/internal/zzcho;

.field private synthetic zzjdz:Ljava/lang/String;

.field private synthetic zzjea:Ljava/lang/String;

.field private synthetic zzjeb:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcho;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcig;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcig;->zzjdz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcig;->zzijk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcig;->zzjea:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzcig;->zzjeb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjdz:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcig;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcho;->zza(Lcom/google/android/gms/internal/zzcho;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchj;->zzawe()Lcom/google/android/gms/internal/zzciz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcig;->zzijk:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzciz;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/AppMeasurement$zzb;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcig;->zzjea:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzitp:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcig;->zzjdz:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzitq:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcig;->zzjeb:J

    iput-wide v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zzitr:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcig;->zzjdt:Lcom/google/android/gms/internal/zzcho;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcho;->zza(Lcom/google/android/gms/internal/zzcho;)Lcom/google/android/gms/internal/zzchj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchj;->zzawe()Lcom/google/android/gms/internal/zzciz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcig;->zzijk:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzciz;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method
