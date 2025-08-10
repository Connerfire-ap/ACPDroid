.class final Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1;
.super Ljava/lang/Object;
.source "PrivacyDashboardActivity.kt"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->render(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDashboardActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDashboardActivity.kt\ncom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1\n*L\n1#1,128:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/drawable/Drawable;",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "getDrawable"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7beff878c8a0f3fcL

    const/4 v2, 0x3

    const-string v3, "com/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1;->this$0:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "it"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1;->$jacocoInit()[Z

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1;->this$0:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    invoke-static {v1, v2}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->access$getHtmlDrawable(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-boolean v4, v0, v4

    return-object v1
.end method
