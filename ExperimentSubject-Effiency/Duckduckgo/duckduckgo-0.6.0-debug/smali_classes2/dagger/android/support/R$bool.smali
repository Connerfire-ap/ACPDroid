.class public final Ldagger/android/support/R$bool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/android/support/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final abc_action_bar_embed_tabs:I = 0x7f040000

.field public static final abc_allow_stacked_button_bar:I = 0x7f040001

.field public static final abc_config_actionMenuItemAllCaps:I = 0x7f040002

.field public static final abc_config_closeDialogWhenTouchOutside:I = 0x7f040003

.field public static final abc_config_showMenuShortcutsWhenKeyboardPresent:I = 0x7f040004


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Ldagger/android/support/R$bool;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x616c9f23d61a3cf9L    # 2.0119733371698772E161

    const/4 v2, 0x1

    const-string v3, "dagger/android/support/R$bool"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Ldagger/android/support/R$bool;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Ldagger/android/support/R$bool;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
