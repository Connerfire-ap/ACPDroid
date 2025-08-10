.class final Lcom/google/android/gms/internal/zzciq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjeh:Lcom/google/android/gms/internal/zzcik;

.field private synthetic zzjel:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcik;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciq;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzciq;->zzjel:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawn()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgu;->zzjaj:Lcom/google/android/gms/internal/zzcgx;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzciq;->zzjel:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgx;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciq;->zzjeh:Lcom/google/android/gms/internal/zzcik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzawm()Lcom/google/android/gms/internal/zzcgj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgj;->zzayw()Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzciq;->zzjel:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Minimum session duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzcgl;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
