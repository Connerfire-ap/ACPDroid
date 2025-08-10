.class public final Lcom/google/android/gms/internal/zzfeo$zza;
.super Lcom/google/android/gms/internal/zzfef;

# interfaces
.implements Lcom/google/android/gms/internal/zzffk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfef<",
        "Lcom/google/android/gms/internal/zzfeo;",
        "Lcom/google/android/gms/internal/zzfeo$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzffk;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfeo;->zzcvp()Lcom/google/android/gms/internal/zzfeo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfef;-><init>(Lcom/google/android/gms/internal/zzfee;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfep;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfeo$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzli(I)Lcom/google/android/gms/internal/zzfeo$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfef;->zzcvi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfeo$zza;->zzpbv:Lcom/google/android/gms/internal/zzfee;

    check-cast v0, Lcom/google/android/gms/internal/zzfeo;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzfeo;->zza(Lcom/google/android/gms/internal/zzfeo;I)V

    return-object p0
.end method
