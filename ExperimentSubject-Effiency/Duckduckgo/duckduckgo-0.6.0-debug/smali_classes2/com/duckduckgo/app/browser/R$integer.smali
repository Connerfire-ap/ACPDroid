.class public final Lcom/duckduckgo/app/browser/R$integer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/browser/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final abc_config_activityDefaultDur:I = 0x7f090000

.field public static final abc_config_activityShortDur:I = 0x7f090001

.field public static final app_bar_elevation_anim_duration:I = 0x7f090002

.field public static final bottom_sheet_slide_duration:I = 0x7f090003

.field public static final cancel_button_image_alpha:I = 0x7f090004

.field public static final config_tooltipAnimTime:I = 0x7f090005

.field public static final design_snackbar_text_max_lines:I = 0x7f090006

.field public static final hide_password_duration:I = 0x7f090007

.field public static final show_password_duration:I = 0x7f090008

.field public static final status_bar_notification_info_maxnum:I = 0x7f090009


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/R$integer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x33799804b0122347L    # 9.954421399923544E-61

    const/4 v2, 0x1

    const-string v3, "com/duckduckgo/app/browser/R$integer"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/R$integer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/R$integer;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
