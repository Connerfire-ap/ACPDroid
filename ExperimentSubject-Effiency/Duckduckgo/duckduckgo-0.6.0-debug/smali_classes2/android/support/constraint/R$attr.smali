.class public final Landroid/support/constraint/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final constraintSet:I = 0x7f03005f

.field public static final layout_constraintBaseline_creator:I = 0x7f0300ba

.field public static final layout_constraintBaseline_toBaselineOf:I = 0x7f0300bb

.field public static final layout_constraintBottom_creator:I = 0x7f0300bc

.field public static final layout_constraintBottom_toBottomOf:I = 0x7f0300bd

.field public static final layout_constraintBottom_toTopOf:I = 0x7f0300be

.field public static final layout_constraintDimensionRatio:I = 0x7f0300bf

.field public static final layout_constraintEnd_toEndOf:I = 0x7f0300c0

.field public static final layout_constraintEnd_toStartOf:I = 0x7f0300c1

.field public static final layout_constraintGuide_begin:I = 0x7f0300c2

.field public static final layout_constraintGuide_end:I = 0x7f0300c3

.field public static final layout_constraintGuide_percent:I = 0x7f0300c4

.field public static final layout_constraintHeight_default:I = 0x7f0300c5

.field public static final layout_constraintHeight_max:I = 0x7f0300c6

.field public static final layout_constraintHeight_min:I = 0x7f0300c7

.field public static final layout_constraintHorizontal_bias:I = 0x7f0300c8

.field public static final layout_constraintHorizontal_chainStyle:I = 0x7f0300c9

.field public static final layout_constraintHorizontal_weight:I = 0x7f0300ca

.field public static final layout_constraintLeft_creator:I = 0x7f0300cb

.field public static final layout_constraintLeft_toLeftOf:I = 0x7f0300cc

.field public static final layout_constraintLeft_toRightOf:I = 0x7f0300cd

.field public static final layout_constraintRight_creator:I = 0x7f0300ce

.field public static final layout_constraintRight_toLeftOf:I = 0x7f0300cf

.field public static final layout_constraintRight_toRightOf:I = 0x7f0300d0

.field public static final layout_constraintStart_toEndOf:I = 0x7f0300d1

.field public static final layout_constraintStart_toStartOf:I = 0x7f0300d2

.field public static final layout_constraintTop_creator:I = 0x7f0300d3

.field public static final layout_constraintTop_toBottomOf:I = 0x7f0300d4

.field public static final layout_constraintTop_toTopOf:I = 0x7f0300d5

.field public static final layout_constraintVertical_bias:I = 0x7f0300d6

.field public static final layout_constraintVertical_chainStyle:I = 0x7f0300d7

.field public static final layout_constraintVertical_weight:I = 0x7f0300d8

.field public static final layout_constraintWidth_default:I = 0x7f0300d9

.field public static final layout_constraintWidth_max:I = 0x7f0300da

.field public static final layout_constraintWidth_min:I = 0x7f0300db

.field public static final layout_editor_absoluteX:I = 0x7f0300dd

.field public static final layout_editor_absoluteY:I = 0x7f0300de

.field public static final layout_goneMarginBottom:I = 0x7f0300df

.field public static final layout_goneMarginEnd:I = 0x7f0300e0

.field public static final layout_goneMarginLeft:I = 0x7f0300e1

.field public static final layout_goneMarginRight:I = 0x7f0300e2

.field public static final layout_goneMarginStart:I = 0x7f0300e3

.field public static final layout_goneMarginTop:I = 0x7f0300e4

.field public static final layout_optimizationLevel:I = 0x7f0300e7


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/constraint/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3df8d9871f46ca87L    # 3.616109905233282E-10

    const/4 v2, 0x1

    const-string v3, "android/support/constraint/R$attr"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/constraint/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/constraint/R$attr;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
