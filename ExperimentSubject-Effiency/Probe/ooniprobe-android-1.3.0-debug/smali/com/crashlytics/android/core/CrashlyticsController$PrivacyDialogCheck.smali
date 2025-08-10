.class final Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/crashlytics/android/core/ReportUploader$SendCheck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashlyticsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivacyDialogCheck"
.end annotation


# instance fields
.field private final kit:Lio/fabric/sdk/android/Kit;

.field private final preferenceManager:Lcom/crashlytics/android/core/PreferenceManager;

.field private final promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Lcom/crashlytics/android/core/PreferenceManager;Lio/fabric/sdk/android/services/settings/PromptSettingsData;)V
    .locals 0
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;
    .param p2, "preferenceManager"    # Lcom/crashlytics/android/core/PreferenceManager;
    .param p3, "promptData"    # Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;->kit:Lio/fabric/sdk/android/Kit;

    .line 1384
    iput-object p2, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;->preferenceManager:Lcom/crashlytics/android/core/PreferenceManager;

    .line 1385
    iput-object p3, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;->promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    .line 1386
    return-void
.end method

.method static synthetic access$1300(Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;)Lcom/crashlytics/android/core/PreferenceManager;
    .locals 1
    .param p0, "x0"    # Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;

    .line 1375
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;->preferenceManager:Lcom/crashlytics/android/core/PreferenceManager;

    return-object v0
.end method


# virtual methods
.method public canSendReports()Z
    .locals 6

    .line 1390
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;->kit:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getFabric()Lio/fabric/sdk/android/Fabric;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/Fabric;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1391
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1396
    :cond_0
    new-instance v1, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$1;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$1;-><init>(Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;)V

    .line 1404
    .local v1, "alwaysSendCallback":Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;
    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;->promptData:Lio/fabric/sdk/android/services/settings/PromptSettingsData;

    invoke-static {v0, v2, v1}, Lcom/crashlytics/android/core/CrashPromptDialog;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;

    move-result-object v2

    .line 1407
    .local v2, "dialog":Lcom/crashlytics/android/core/CrashPromptDialog;
    new-instance v3, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$2;

    invoke-direct {v3, p0, v2}, Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck$2;-><init>(Lcom/crashlytics/android/core/CrashlyticsController$PrivacyDialogCheck;Lcom/crashlytics/android/core/CrashPromptDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1414
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    const-string v5, "Waiting for user opt-in."

    invoke-interface {v3, v4, v5}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashPromptDialog;->await()V

    .line 1416
    invoke-virtual {v2}, Lcom/crashlytics/android/core/CrashPromptDialog;->getOptIn()Z

    move-result v3

    return v3

    .line 1393
    .end local v1    # "alwaysSendCallback":Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;
    .end local v2    # "dialog":Lcom/crashlytics/android/core/CrashPromptDialog;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method
