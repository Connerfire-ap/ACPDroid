.class final Lcom/google/android/gms/internal/zzcfb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbdq:Ljava/lang/String;

.field private synthetic zzitz:J

.field private synthetic zziua:Lcom/google/android/gms/internal/zzcfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcfa;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcfb;->zziua:Lcom/google/android/gms/internal/zzcfa;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcfb;->zzbdq:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcfb;->zzitz:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcfb;->zziua:Lcom/google/android/gms/internal/zzcfa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcfb;->zzbdq:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcfb;->zzitz:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcfa;->zza(Lcom/google/android/gms/internal/zzcfa;Ljava/lang/String;J)V

    return-void
.end method
