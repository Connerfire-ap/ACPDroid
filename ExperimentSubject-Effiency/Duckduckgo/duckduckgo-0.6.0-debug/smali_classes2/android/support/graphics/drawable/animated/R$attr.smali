.class public final Landroid/support/graphics/drawable/animated/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/animated/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final font:I = 0x7f03008f

.field public static final fontProviderAuthority:I = 0x7f030091

.field public static final fontProviderCerts:I = 0x7f030092

.field public static final fontProviderFetchStrategy:I = 0x7f030093

.field public static final fontProviderFetchTimeout:I = 0x7f030094

.field public static final fontProviderPackage:I = 0x7f030095

.field public static final fontProviderQuery:I = 0x7f030096

.field public static final fontStyle:I = 0x7f030097

.field public static final fontWeight:I = 0x7f030098


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/graphics/drawable/animated/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x45960a91bfb1dcL

    const/4 v2, 0x1

    const-string v3, "android/support/graphics/drawable/animated/R$attr"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/graphics/drawable/animated/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/graphics/drawable/animated/R$attr;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
