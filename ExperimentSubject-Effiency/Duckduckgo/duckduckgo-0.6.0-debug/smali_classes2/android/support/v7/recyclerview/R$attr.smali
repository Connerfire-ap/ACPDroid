.class public final Landroid/support/v7/recyclerview/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final fastScrollEnabled:I = 0x7f03008a

.field public static final fastScrollHorizontalThumbDrawable:I = 0x7f03008b

.field public static final fastScrollHorizontalTrackDrawable:I = 0x7f03008c

.field public static final fastScrollVerticalThumbDrawable:I = 0x7f03008d

.field public static final fastScrollVerticalTrackDrawable:I = 0x7f03008e

.field public static final font:I = 0x7f03008f

.field public static final fontProviderAuthority:I = 0x7f030091

.field public static final fontProviderCerts:I = 0x7f030092

.field public static final fontProviderFetchStrategy:I = 0x7f030093

.field public static final fontProviderFetchTimeout:I = 0x7f030094

.field public static final fontProviderPackage:I = 0x7f030095

.field public static final fontProviderQuery:I = 0x7f030096

.field public static final fontStyle:I = 0x7f030097

.field public static final fontWeight:I = 0x7f030098

.field public static final layoutManager:I = 0x7f0300b4

.field public static final reverseLayout:I = 0x7f03011a

.field public static final spanCount:I = 0x7f030129

.field public static final stackFromEnd:I = 0x7f03012f


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Landroid/support/v7/recyclerview/R$attr;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x273e2436e8074922L    # -3.602750429349634E119

    const/4 v2, 0x1

    const-string v3, "android/support/v7/recyclerview/R$attr"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/R$attr;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/v7/recyclerview/R$attr;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
