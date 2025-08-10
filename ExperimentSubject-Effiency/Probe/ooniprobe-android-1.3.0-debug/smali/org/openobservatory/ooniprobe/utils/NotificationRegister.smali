.class public Lorg/openobservatory/ooniprobe/utils/NotificationRegister;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "NotificationRegister.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationRegister"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 3

    .line 20
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "refreshedToken":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationRegister"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/utils/NotificationRegister;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/openobservatory/ooniprobe/utils/NotificationService;->getInstance(Landroid/content/Context;)Lorg/openobservatory/ooniprobe/utils/NotificationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openobservatory/ooniprobe/utils/NotificationService;->setDevice_token(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/utils/NotificationRegister;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/openobservatory/ooniprobe/utils/NotificationService;->getInstance(Landroid/content/Context;)Lorg/openobservatory/ooniprobe/utils/NotificationService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openobservatory/ooniprobe/utils/NotificationService;->sendRegistrationToServer()V

    .line 24
    return-void
.end method
