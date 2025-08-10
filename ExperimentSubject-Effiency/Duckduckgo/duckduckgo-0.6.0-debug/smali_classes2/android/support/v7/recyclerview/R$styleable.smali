.class public final Landroid/support/v7/recyclerview/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
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

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x2

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x4

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x6

.field public static final RecyclerView_layoutManager:I = 0x7

.field public static final RecyclerView_reverseLayout:I = 0x8

.field public static final RecyclerView_spanCount:I = 0x9

.field public static final RecyclerView_stackFromEnd:I = 0xa


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/recyclerview/R$styleable;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x190863a48eb0f8dbL    # -1.0273240799538772E188

    const/4 v2, 0x2

    const-string v3, "android/support/v7/recyclerview/R$styleable"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/R$styleable;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/support/v7/recyclerview/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Landroid/support/v7/recyclerview/R$styleable;->FontFamily:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/support/v7/recyclerview/R$styleable;->FontFamilyFont:[I

    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void

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

    :array_2
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f03008a
        0x7f03008b
        0x7f03008c
        0x7f03008d
        0x7f03008e
        0x7f0300b4
        0x7f03011a
        0x7f030129
        0x7f03012f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/v7/recyclerview/R$styleable;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
