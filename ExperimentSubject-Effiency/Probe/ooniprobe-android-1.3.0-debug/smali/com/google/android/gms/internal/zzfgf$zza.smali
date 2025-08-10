.class public final Lcom/google/android/gms/internal/zzfgf$zza;
.super Lcom/google/android/gms/internal/zzfef;

# interfaces
.implements Lcom/google/android/gms/internal/zzffk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfgf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfef<",
        "Lcom/google/android/gms/internal/zzfgf;",
        "Lcom/google/android/gms/internal/zzfgf$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzffk;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfgf;->zzcws()Lcom/google/android/gms/internal/zzfgf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfef;-><init>(Lcom/google/android/gms/internal/zzfee;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfgg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfgf$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdf(J)Lcom/google/android/gms/internal/zzfgf$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfef;->zzcvi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgf$zza;->zzpbv:Lcom/google/android/gms/internal/zzfee;

    check-cast v0, Lcom/google/android/gms/internal/zzfgf;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzfgf;->zza(Lcom/google/android/gms/internal/zzfgf;J)V

    return-object p0
.end method

.method public final zzls(I)Lcom/google/android/gms/internal/zzfgf$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfef;->zzcvi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgf$zza;->zzpbv:Lcom/google/android/gms/internal/zzfee;

    check-cast v0, Lcom/google/android/gms/internal/zzfgf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzfgf;->zza(Lcom/google/android/gms/internal/zzfgf;I)V

    return-object p0
.end method
