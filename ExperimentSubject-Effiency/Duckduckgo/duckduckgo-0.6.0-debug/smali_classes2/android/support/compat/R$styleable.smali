.class public final Landroid/support/compat/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/compat/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/compat/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xaeec0ebba1cae6aL    # -8.092353840328053E255

    const/4 v2, 0x2

    const-string v3, "android/support/compat/R$styleable"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/compat/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/support/compat/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Landroid/support/compat/R$styleable;->FontFamily:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/compat/R$styleable;->FontFamilyFont:[I

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void

    nop

    :array_0
    .array-data 4
        0x7f030091
        0x7f030092
        0x7f030093
        0x7f030094
        0x7f030095
        0x7f030096
    .end array-data

    :array_1
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f03008f
        0x7f030097
        0x7f030098
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/compat/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
