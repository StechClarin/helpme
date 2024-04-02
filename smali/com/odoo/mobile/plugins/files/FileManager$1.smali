.class Lcom/odoo/mobile/plugins/files/FileManager$1;
.super Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odoo/mobile/plugins/files/FileManager;->guessFileName(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odoo/mobile/plugins/files/FileManager;

.field final synthetic val$fileNameCallback:Landroid/webkit/ValueCallback;

.field final synthetic val$requestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/odoo/mobile/plugins/files/FileManager;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/odoo/mobile/plugins/files/FileManager$1;->this$0:Lcom/odoo/mobile/plugins/files/FileManager;

    iput-object p2, p0, Lcom/odoo/mobile/plugins/files/FileManager$1;->val$requestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/odoo/mobile/plugins/files/FileManager$1;->val$fileNameCallback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/plugins/files/FileManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .line 0
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/odoo/mobile/plugins/files/FileManager$1;->val$requestUrl:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "Cookie"

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lcom/odoo/mobile/plugins/files/FileManager$1;->val$requestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Disposition"

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/odoo/mobile/plugins/files/FileManager$1;->val$requestUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lmozilla/components/support/utils/DownloadUtils;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/odoo/mobile/plugins/files/FileManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "download"

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/odoo/mobile/plugins/files/FileManager$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Lcom/odoo/mobile/core/utils/AsyncTaskCoroutine;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/odoo/mobile/plugins/files/FileManager$1;->val$fileNameCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method
