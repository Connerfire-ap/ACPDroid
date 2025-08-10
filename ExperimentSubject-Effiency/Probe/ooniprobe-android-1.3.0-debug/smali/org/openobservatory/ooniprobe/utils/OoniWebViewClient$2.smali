.class Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient$2;
.super Ljava/lang/Object;
.source "OoniWebViewClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$openURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$openURL"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient$2;->this$0:Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient$2;->val$openURL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "id"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient$2;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient$2;->val$openURL:Ljava/lang/String;

    .line 45
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method
